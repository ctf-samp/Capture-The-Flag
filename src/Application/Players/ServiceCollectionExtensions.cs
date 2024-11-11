﻿namespace CTF.Application.Players;

public static class PlayerServicesExtensions
{
    public static IServiceCollection AddPlayerServices(this IServiceCollection services)
    {
        services
            .AddSingleton<PlayerRankUpdater>()
            .AddSingleton<KillingSpreeUpdater>()
            .AddSingleton<PlayerStatsRenderer>()
            .AddSingleton<LoginDialogViewer>()
            .AddComboServices()
            .AddChatServices();

        return services;
    }
}
