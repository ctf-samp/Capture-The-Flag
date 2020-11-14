﻿using CaptureTheFlag.Textdraw;
using SampSharp.GameMode;
using SampSharp.GameMode.Definitions;
using SampSharp.GameMode.Display;
using SampSharp.GameMode.Events;
using SampSharp.GameMode.SAMP;
using SampSharp.GameMode.SAMP.Commands;
using SampSharp.GameMode.World;
using System;
using System.Collections.Generic;
using System.Text;

namespace CaptureTheFlag.Command
{
    static class ExtensionTablistDialog
    {
        public static void SetInfo(this TablistDialog vs)
        {
            vs.Clear();
            GameMode.TeamAlpha.GetMessageTeamEnable(out var msgAlpha, false);
            GameMode.TeamBeta.GetMessageTeamEnable(out var msgBeta, false);
            vs.Add(new[]
            {       
                $"{GameMode.TeamAlpha.OtherColor}{GameMode.TeamAlpha.NameTeam}",
                $"{GameMode.TeamAlpha.OtherColor}{GameMode.TeamAlpha.Members}",
                $"{GameMode.TeamAlpha.OtherColor}{msgAlpha}"
            });
            vs.Add(new[]
            {
                $"{GameMode.TeamBeta.OtherColor}{GameMode.TeamBeta.NameTeam}",
                $"{GameMode.TeamBeta.OtherColor}{GameMode.TeamBeta.Members}",
                $"{GameMode.TeamBeta.OtherColor}{msgBeta}"
            });
        }

        public static void ShowDialog(this TablistDialog vs, Player player)
        {
            vs.SetInfo();
            vs.Show(player);
        }
    }

    [CommandGroup("public", PermissionChecker = typeof(BlockCommand))]
    public class CmdPublic
    {
        [Command("cmds", Shortcut = "cmds")]
        private static void ListCommands(Player player)
        {
            new MessageDialog(" ",
                $"{Color.Orange}Comandos:" +
                $"\n{Color.Yellow}/kill - {Color.White} Asesina al jugador (su vida queda en 0.0)." +
                $"\n{Color.Yellow}/tstats - {Color.White} Muestra las estadísticas de ambos equipos (Alpha y Beta)." +
                $"\n{Color.Yellow}/switch - {Color.White} Permite al jugador cambiarse de equipo." +
                $"\n{Color.Yellow}/tc - {Color.White} Permite hablar en el Team Chat." +
                $"\n{Color.Yellow}/re{Color.White} Reinicia a 0 los asesinatos y muertes por ronda." +
                $"\n{Color.Yellow}/help - {Color.White} Muestra información sobre como se debe jugar." +
                $"\n{Color.Yellow}/admins{Color.White} - Muestra la lista de administradores que están conectados." +
                $"\n{Color.Yellow}/vips{Color.White} - Muestra los usuarios VIP que están conectados." +
                $"\n{Color.Yellow}/stats{Color.White} - Muestra las estadísticas del jugador." +
                $"\n{Color.Yellow}/combos{Color.White} - Muestra los combos que podrás canjear por adrenalina." +
                $"\n{Color.Yellow}/ranks{Color.White} - Muestra la lista de rangos disponibles." +
                $"\n{Color.Yellow}/weapons{Color.White} - Muestra la lista de armas a elegir." +
                $"\n\n{Color.Orange}Teclas:" +
                $"\n{Color.Yellow}Tecla H:{Color.White} Muestra el listado de combos a canjear (por adrenalina)." +
                $"\n{Color.Yellow}Tecla Y:{Color.White} Muestra un menú de armas." +
                $"\n{Color.Yellow}Tecla G:{Color.White} Muestra la lista de usuarios conectados (por equipo)." +
                $"\n\n{Color.Orange}Signos:" +
                $"\n{Color.Yellow}Signo (!):{Color.White} Permite hablar en el TeamChat (ejemplo: {Color.Pink}!texto{Color.White})." +
                $"\n{Color.Yellow}Signo (#):{Color.White} Permite hablar en el AdminChat (ejemplo: {Color.Pink}#texto{Color.White})." +
                $"\n{Color.Yellow}Signo ($):{Color.White} Permite hablar en el VipChat (ejemplo: {Color.Pink}$texto{Color.White}).", "Aceptar").Show(player);
        }

        [Command("help", Shortcut = "help")]
        private static void Help(Player player)
        {
            new MessageDialog("Ayuda",
                $"{Color.Yellow}¿Qué es Capture The Flag?" +
                $"\n{Color.White}Capture The Flag es un estilo de juego en el que dos equipos intentan atrapar una bandera." +
                $"\n{Color.White}Si el jugador captura la bandera, debe llevarla a un sitio determinado para que su equipo gane puntos." +
                $"\n{Color.White}Para jugar, los jugadores se dividen en dos equipos, con cada uno en un campo." +
                $"\n{Color.White}Para poder ganar, hay que coger una bandera y llevarla a un determinado sitio." +
                $"\n\n{Color.Yellow}¿A dónde llevo la bandera?" +
                $"\n{Color.White}Si capturaste la bandera, la debes llevar a la posición base donde se encuentre la bandera de tu equipo. " +
                $"\n{Color.White}Esa “posición base” es identificada por un ícono que aparecerá en el mapa radar." +
                $"\n{Color.White}Si eres del equipo {GameMode.TeamAlpha.OtherColor}Alpha{Color.White}, el ícono será de color {GameMode.TeamAlpha.OtherColor}Rojo {Color.White}y si eres del equipo {GameMode.TeamBeta.OtherColor}Beta{Color.White}, el ícono será de color {GameMode.TeamBeta.OtherColor}Azul." +
                $"\n\n{Color.Yellow}¿Qué pasa si no encuentro la bandera de mi equipo en la posición base?" +
                $"\n{Color.White}Pues tu equipo no ganará puntos. En ese caso, debes recuperar la bandera de tu equipo." +
                $"\n\n{Color.Yellow}¿Cómo recupero la bandera de mi equipo?" +
                $"\n{Color.White}Simple, debes matar al jugador que robó la bandera." +
                $"\n{Color.White}Aunque puede que la bandera quede en algún sitio que no sea la posición base y te toque buscarla." +
                $"\n\n{Color.Yellow}¿Cómo sé quien se robó la bandera de mi equipo?" +
                $"\n{Color.White}Con el comando {Color.Pink}/tstats.", "Aceptar").Show(player);
        }

        [Command("re", Shortcut = "re")]
        private static void ResetScore(Player player)
        {
            player.Kills = 0;
            player.Deaths = 0;
            TextDrawPlayer.UpdateTdStats(player);
            BasePlayer.SendClientMessageToAll(Color.Yellow, $"** {player.Name} ha reseteado su score con {Color.Red}/re");
        }

        [Command("kill", Shortcut = "kill")]
        private static void Kill(Player player)
        {
            player.Health = 0;
        }

        [Command("tstats", Shortcut = "tstats")]
        private static void StatsTeam(Player player)
        {
            new MessageDialog("Stats Team",
                GameMode.TeamAlpha.OtherColor +
                "Team: Alpha" +
                "\nColor Team: Red" +
                "\nUsers: " + GameMode.TeamAlpha.Members +
                "\nScore: " + GameMode.TeamAlpha.Score +
                "\nTotal Kills: " + GameMode.TeamAlpha.Kills +
                "\nTotal Deaths: " + GameMode.TeamAlpha.Deaths +
                "\nCaptured Flag by: " + (GameMode.TeamAlpha.Flag.PlayerCaptured == null ? "None" : $"{GameMode.TeamAlpha.Flag.PlayerCaptured.Name}") +
                GameMode.TeamBeta.OtherColor +
                "\n\nTeam: Beta" +
                "\nColor Team: Blue" +
                "\nUsers: " + GameMode.TeamBeta.Members +
                "\nScore: " + GameMode.TeamBeta.Score +
                "\nTotal Kills: " + GameMode.TeamBeta.Kills +
                "\nTotal Deaths: " + GameMode.TeamBeta.Deaths +
                "\nCaptured Flag by: " + (GameMode.TeamBeta.Flag.PlayerCaptured == null ? "None" : $"{GameMode.TeamBeta.Flag.PlayerCaptured.Name}"), "Aceptar").Show(player);
        }

        [Command("ranks", Shortcut = "ranks")]
        private static void RanksDialog(Player player)
        {
            var ct = new TablistDialog("Ranks",
                new[] {
                    "Level",
                    "Rank",
                    "Kills Required"
                }, "Cerrar", "");
            for (int i = Rank.MAX_RANK; i != 0; --i)
                ct.Add(i.ToString(), Rank.GetRankLevel(i), Rank.GetRequiredKills(i).ToString());
            ct.Show(player);
        }

        [Command("stats", Shortcut = "stats")]
        private static void StatsPlayer(Player player, int playerid = - 1)
        {
            Player player1 = (Player)(playerid != -1 ? BasePlayer.Find(playerid) : player);
            if (player1 == null)
            {
                player.SendClientMessage(Color.Red, "Error: El jugador no se encuentra conectado.");
                return;
            }
            new MessageDialog($"Name: {player1.Name}",
                $"{Color.Yellow}ID: {Color.White}{player1.Id}" +
                $"\n{Color.Yellow}Kills for Round: {Color.White}{player1.Kills}" +
                $"\n{Color.Yellow}Deaths for Round: {Color.White}{player1.Deaths}" +
                $"\n{Color.Yellow}Total Kills: {Color.White}{player1.Data.TotalKills}" +
                $"\n{Color.Yellow}Total Deaths: {Color.White}{player1.Data.TotalDeaths}" +
                $"\n{Color.Yellow}Admin Level: {Color.White}{player1.Data.LevelAdmin}" +
                $"\n{Color.Yellow}VIP Level: {Color.White}{player1.Data.LevelVip}" +
                $"\n{Color.Yellow}Rank: {Color.White}{Rank.GetRankLevel(player1.Data.LevelGame)}" +
                $"\n{Color.Yellow}Level: {Color.White}{player1.Data.LevelGame}" +
                $"\n{Color.Yellow}DroppedFlags: {Color.White}{player1.Data.DroppedFlags}" +
                $"\n{Color.Yellow}Killing Sprees: {Color.White}{player1.Data.KillingSprees}" +
            $"\n{Color.Yellow}Adrenaline: {Color.White}{player1.Adrenaline}/100", "Cerrar", "").Show(player);
        }

        [Command("switch", Shortcut = "switch")]
        private static void ChangeTeam(Player player)
        {
            GameMode.TeamAlpha.GetMessageTeamEnable(out var msgAlpha, false);
            GameMode.TeamBeta.GetMessageTeamEnable(out var msgBeta, false);
            var ct = new TablistDialog("Change Team", 
                new[] { 
                    "Name",
                    "Users",
                    "Availability"
                }, "Seleccionar", "Cerrar");
            ct.ShowDialog(player);
            ct.Response += (sender, e) =>
            {
                if (e.DialogButton == DialogButton.Left)
                {
                    var player = e.Player as Player;
                    var ct = sender as TablistDialog;
                    if (player.PlayerTeam.Id == (TeamID)e.ListItem)
                    {
                        player.SendClientMessage(Color.Red, "Error: Ya formas parte de ese equipo.");
                        ct.ShowDialog(player);
                        return;
                    }
                    if(GameMode.TeamAlpha.Members == GameMode.TeamBeta.Members)
                    {
                        player.SendClientMessage(Color.Red, $"Error: No puedes cambiarte al equipo {(e.ListItem == 0 ? "Alpha" : "Beta")} porque el equipo {player.PlayerTeam.NameTeam} quedaría desequilibrado.");
                        ct.ShowDialog(player);
                        return;
                    }
                    --player.PlayerTeam.Members;
                    if (player.PlayerTeam.TeamRival.IsFull())
                    {
                        player.SendClientMessage(Color.Red, "Error: El equipo no está disponible.");
                        ++player.PlayerTeam.Members;
                        ct.ShowDialog(player);
                        return;
                    }
                    if (player.IsCapturedFlag())
                        player.Drop();
                    player.PlayerTeam = (e.ListItem == 0) ? GameMode.TeamAlpha : GameMode.TeamBeta;
                    ++player.PlayerTeam.Members;
                    BasePlayer.SendClientMessageToAll($"{player.PlayerTeam.OtherColor}[Team {player.PlayerTeam.NameTeam}]: {player.Name} se cambió al equipo {player.PlayerTeam.NameTeam}.");
                    GameMode.TdGlobal.UpdateCountUsers();
                    player.Spawn();
                }
            };
        }

        [Command("tc", Shortcut = "tc", UsageMessage = "/tc [message]")]
        public static void TeamChat(Player player, string msg)
        {
            if(player.Team == BasePlayer.NoTeam)
            {
                player.SendClientMessage(Color.Red, "Error: Debes estar en un equipo para usar el TeamChat.");
                return;
            }
            foreach(Player player1 in BasePlayer.GetAll<Player>())
                if(player.Team == player1.Team)
                    player1.SendClientMessage($"{player.PlayerTeam.OtherColor}[Team Chat] {player.Name} [{player.Id}]: {msg}");
        }
    }
}
