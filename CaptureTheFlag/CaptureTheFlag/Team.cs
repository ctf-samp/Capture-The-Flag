﻿using CaptureTheFlag.Textdraw;
using SampSharp.GameMode;
using SampSharp.GameMode.Display;
using SampSharp.GameMode.SAMP;
using SampSharp.GameMode.World;
using SampSharp.Streamer.World;
using System;
using System.Collections.Generic;
using System.Text;

namespace CaptureTheFlag
{
    public class Team
    {
        public TeamID Id { get; private set; }
        public int Members { get; set; }
        public int Score { get; set; }
        public int Kills { get; set; }
        public int Deaths { get; set; }
        public int Skin { get; private set; }
        public string NameTeam { get; private set; }
        public string NameColor { get; private set; }
        public string ColorGameText { get; private set; }
        public string OtherColor { get; private set; }
        public Flag Flag { get; private set; }
        public Team TeamRival { get; set; }
        public TextDraw TdScore { get; private set; }
        public DynamicMapIcon Icon { get; private set; }
        public DynamicCheckpoint Checkpoint { get; private set; }

        public Team(int skin, string otherColor, string colorGameText, TextDraw tdscore, TeamID teamid, string name, string namecolor, Flag flag)
        {
            Skin = skin;
            OtherColor = otherColor;
            ColorGameText = colorGameText;
            TdScore = tdscore;
            Id = teamid;
            NameTeam = name;
            NameColor = namecolor;
            Flag = flag;
            Icon = new DynamicMapIcon(Flag.PositionBase, 0) { StreamDistance = 5000f, Interior = 10, Color = Flag.ColorHex};
            Checkpoint = new DynamicCheckpoint(Flag.PositionBase, 1.5f, 0, 10, null, 10.0f);

            Checkpoint.Enter += (sender, e) =>
            {
                if(e.Player.Team == (int)Id)
                {
                    if (!Flag.IsPositionBase)
                    {
                        if (TeamRival.Flag.PlayerCaptured == e.Player)
                        {
                            e.Player.SendClientMessage($"{Color.Yellow}¡Felicidades! {Color.White}Has llevado la bandera del equipo contrario a una zona segura.");
                            e.Player.SendClientMessage($"{Color.Yellow}[!]: {Color.White}La bandera de tu equipo no está en la base, de este modo el equipo no sumará puntos.");
                        }
                        if (Flag.PlayerCaptured != null)
                            e.Player.SendClientMessage($"{Color.Yellow}[INFO]: {Color.White}{Flag.PlayerCaptured.Name} capturó la bandera de tu equipo, debes recuperarla.");
                        else
                            e.Player.SendClientMessage($"{Color.Yellow}[INFO]: {Color.White}La bandera de tu equipo fue soltada por algún jugador, debes recuperarla.");
                    }
                    else
                    {
                        //code.
                    }
                }
            };
        }

        public bool IsFull()
        {
            return Members > TeamRival.Members;
        }

        public void UpdateTdScore()
        {
            TdScore.Text = $"{ColorGameText}{NameTeam}: {Score}";
            TdScore.Show();
        }

        public void ResetStats()
        {
            Score = 0;
            Kills = 0;
            Deaths = 0;
        }
        
        public bool GetMessageTeamEnable(out string message, bool msgComplete = true)
        {
            bool full;
            message = (full = IsFull()) ?
                (msgComplete ? $"~y~{NameTeam}~n~~r~ not available" : "not available") :
                (msgComplete ? $"~y~{NameTeam}~n~~r~ available" : "available");
            return full;
        }

        public void ExecuteAction(Player player, Pickup pickup)
        {
            if (Flag.IsPositionBase)
            {
                if (player.PlayerTeam.Id == TeamRival.Id)
                {
                    Captured(player);
                    pickup.Dispose();
                }
                else if (player == TeamRival.Flag.PlayerCaptured)
                    TeamRival.Carry(player);
            }
            else
            {
                if (player.PlayerTeam.Id == Id)
                    Recover(player);
                else
                    Captured(player, false);
                pickup.Dispose();
            }
        }

        public void Captured(Player player, bool takeInPosBase = true)
        {
            Flag.IsPositionBase = false;
            Flag.AttachedObject(player);
            Flag.PlayerCaptured = player;
            if (takeInPosBase)
            {
                BasePlayer.SendClientMessageToAll($"{OtherColor}[Team {NameTeam}]: {player.Name} capturó la bandera {NameColor} del equipo {NameTeam}.");
                player.SendClientMessage($"{Color.Pink}[!]: {Color.White}Capturaste la bandera, debes llevarla a tu base.");
                player.UpdateAdrenaline(4, "capturar la bandera");
            }
            else
            {
                BasePlayer.SendClientMessageToAll($"{OtherColor}[Team {NameTeam}]: {player.Name} tomó la bandera {NameColor} del equipo {NameTeam}.");
                player.SendClientMessage($"{Color.Pink}[!]: {Color.White}Debes llevar esa bandera a tu base.");
            }
        }

        public void Carry(Player player)
        {
            BasePlayer.SendClientMessageToAll($"{OtherColor}[Team {NameTeam}]: {player.Name} llevó la bandera {NameColor} del equipo {NameTeam} a su base.");
            BasePlayer.GameTextForAll($"~>~{TeamRival.ColorGameText}+1 score team {TeamRival.NameTeam}", 5000, 3);
            player.RemoveAttachedObject(0);
            Flag.Create(); 
            Flag.PlayerCaptured = null;
            Flag.IsPositionBase = true;
            ++TeamRival.Score;
            TeamRival.UpdateTdScore();
            player.UpdateAdrenaline(10, "llevar la bandera tu base");
            ++player.Data.DroppedFlags;
            foreach(Player player1 in BasePlayer.GetAll<Player>())
                if(player.Team == player1.Team && player != player1)
                    player1.UpdateAdrenaline(3, "ayudar a capturar la bandera");
        }

        public void Recover(Player player)
        {
            Flag.IsPositionBase = true;
            Flag.Create();
            BasePlayer.SendClientMessageToAll($"{OtherColor}[Team {NameTeam}]: {player.Name} recuperó la bandera {NameColor} del equipo {NameTeam}.");
            player.UpdateAdrenaline(4, "recuperar la bandera");
        }

        public void Drop(Player player, Player killer)
        {
            Drop(player);
            if (killer != null)
                killer.UpdateAdrenaline(4, "matar al portador");
        }

        public void Drop(Player player)
        {
            Flag.Create(player);
            Flag.PlayerCaptured = null;
            Flag.IsPositionBase = false;
            BasePlayer.SendClientMessageToAll($"{OtherColor}[Team {NameTeam}]: {player.Name} dejó caer la bandera {NameColor} del equipo {NameTeam}.");
        }
    }

    public enum TeamID
    {
       Alpha,
       Beta
    }

    public class SkinTeam
    {
        public static int Alpha { get; } = 170;
        public static int Beta { get; } = 177;
    }
}
