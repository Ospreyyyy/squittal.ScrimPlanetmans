﻿using squittal.ScrimPlanetmans.ScrimMatch.Messages;
using System;

namespace squittal.ScrimPlanetmans.Services.ScrimMatch
{
    public interface IScrimMessageBroadcastService
    {
        event EventHandler<SimpleMessageEventArgs> RaiseSimpleMessageEvent;

        event EventHandler<TeamPlayerChangeEventArgs> RaiseTeamPlayerChangeEvent;
        event EventHandler<TeamOutfitChangeEventArgs> RaiseTeamOutfitChangeEvent;

        event EventHandler<PlayerStatUpdateEventArgs> RaisePlayerStatUpdateEvent;
        event EventHandler<TeamStatUpdateEventArgs> RaiseTeamStatUpdateEvent;
        
        event EventHandler<ScrimDeathActionEventEventArgs> RaiseScrimDeathActionEvent;
        event EventHandler<ScrimReviveActionEventEventArgs> RaiseScrimReviveActionEvent;
        event EventHandler<ScrimAssistActionEventEventArgs> RaiseScrimAssistActionEvent;
        event EventHandler<ScrimObjectiveTickActionEventEventArgs> RaiseScrimObjectiveTickActionEvent;
        event EventHandler<ScrimFacilityControlActionEventEventArgs> RaiseScrimFacilityControlActionEvent;

        event EventHandler<PlayerLoginEventArgs> RaisePlayerLoginEvent;
        event EventHandler<PlayerLogoutEventArgs> RaisePlayerLogoutEvent;

        event EventHandler<MatchStateUpdateEventArgs> RaiseMatchStateUpdateEvent;
        event EventHandler<MatchConfigurationUpdateEventArgs> RaiseMatchConfigurationUpdateEvent;

        event EventHandler<MatchTimerTickEventArgs> RaiseMatchTimerTickEvent;

        void BroadcastSimpleMessage(string message);

        void BroadcastTeamPlayerChangeMessage(TeamPlayerChangeMessage message);
        void BroadcastTeamOutfitChangeMessage(TeamOutfitChangeMessage message);
        void BroadcastPlayerStatUpdateMessage(PlayerStatUpdateMessage message);
        void BroadcastTeamStatUpdateMessage(TeamStatUpdateMessage message);

        void BroadcastScrimDeathActionEventMessage(ScrimDeathActionEventMessage message);
        void BroadcastScrimReviveActionEventMessage(ScrimReviveActionEventMessage message);
        void BroadcastScrimAssistActionEventMessage(ScrimAssistActionEventMessage message);
        void BroadcastScrimObjectiveTickActionEventMessage(ScrimObjectiveTickActionEventMessage message);
        void BroadcastScrimFacilityControlActionEventMessage(ScrimFacilityControlActionEventMessage message);

        void BroadcastPlayerLoginMessage(PlayerLoginMessage message);
        void BroadcastPlayerLogoutMessage(PlayerLogoutMessage message);

        void BroadcastMatchStateUpdateMessage(MatchStateUpdateMessage message);
        void BroadcastMatchConfigurationUpdateMessage(MatchConfigurationUpdateMessage message);

        void BroadcastMatchTimerTickMessage(MatchTimerTickMessage message);
    }
}
