﻿namespace CTF.Application.Players;

public class PlayerSpawnSystem(MapInfoService mapInfoService) : ISystem
{
    [Event]
    public void OnPlayerSpawn(Player player)
    {
        CurrentMap currentMap = mapInfoService.Read();
        PlayerInfo playerInfo = player.GetInfo();
        SpawnLocation spawnLocation = currentMap.GetRandomSpawnLocation(playerInfo.Team.Id);
        player.Position = spawnLocation.Position;
        player.Angle = spawnLocation.Angle;
        player.Interior = currentMap.Interior;
        player.Color = playerInfo.Team.ColorHex;
        player.Team = (int)playerInfo.Team.Id;
        if (playerInfo.HasSkin())
        {
            player.Skin = playerInfo.SkinId;
        }
    }
}
