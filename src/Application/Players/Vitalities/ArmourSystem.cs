﻿namespace CTF.Application.Players.Vitalities;

public class ArmourSystem(
    IWorldService worldService,
    IEntityManager entityManager,
    ServerTimeService serverTimeService) : ISystem
{
    [PlayerCommand("addarmour")]
    public void AddArmourToPlayer(
        Player currentPlayer,
        [CommandParameter(Name = "playerId")]Player targetPlayer,
        float amount)
    {
        if (currentPlayer.HasLowerRoleThan(RoleId.Moderator))
            return;

        Result<Vitality> result = Vitality.Create(amount);
        if (result.IsFailed)
        {
            currentPlayer.SendClientMessage(Color.Red, result.Message);
            return;
        }

        {
            var message = Smart.Format(Messages.AddArmourToPlayer, new
            {
                PlayerName = targetPlayer.Name,
                Armour = amount
            });
            currentPlayer.SendClientMessage(Color.Yellow, message);
        }

        {
            var message = Smart.Format(Messages.ReceiveArmourFromPlayer, new
            {
                PlayerName = currentPlayer.Name,
                Armour = amount
            });
            targetPlayer.SendClientMessage(Color.Yellow, message);
            targetPlayer.AddArmour(amount);
        }
    }

    [PlayerCommand("addallarmour")]
    public void AddArmourToAllPlayers(Player currentPlayer, float amount)
    {
        if (currentPlayer.HasLowerRoleThan(RoleId.Moderator))
            return;

        Result<Vitality> result = Vitality.Create(amount);
        if (result.IsFailed)
        {
            currentPlayer.SendClientMessage(Color.Red, result.Message);
            return;
        }

        IEnumerable<Player> players = entityManager.GetComponents<Player>();
        foreach (Player targetPlayer in players)
        {
            targetPlayer.AddArmour(amount);
        }

        var message = Smart.Format(Messages.AddArmourToAllPlayers, new
        {
            PlayerName = currentPlayer.Name,
            Armour = amount
        });
        worldService.SendClientMessage(Color.Yellow, message);
    }

    [PlayerCommand("armour")]
    public void RestoreArmour(Player currentPlayer)
    {
        if (currentPlayer.HasLowerRoleThan(RoleId.VIP))
            return;

        const int Minutes = 4;
        var waitTimeComponent = currentPlayer.GetComponent<WaitTimeComponent>();
        if (waitTimeComponent.Value > serverTimeService.GetTime())
        {
            var message = Smart.Format(Messages.TimeRequiredToReuseCommand, new { Minutes });
            currentPlayer.SendClientMessage(Color.Red, message);
            return;
        }

        static int ConvertMinutesToSeconds(int value) => value * 60;
        int seconds = ConvertMinutesToSeconds(Minutes);
        waitTimeComponent.Value = serverTimeService.GetTime() + seconds;
        currentPlayer.Armour = 100;
    }

    [Event]
    public void OnPlayerConnect(Player player)
        => player.AddComponent<WaitTimeComponent>();

    private class WaitTimeComponent : Component
    {
        public int Value { get; set; }
    }
}
