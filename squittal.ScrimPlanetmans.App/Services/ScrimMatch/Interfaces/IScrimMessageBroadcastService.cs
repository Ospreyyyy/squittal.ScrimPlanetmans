﻿using squittal.ScrimPlanetmans.ScrimMatch.Events;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace squittal.ScrimPlanetmans.Services.ScrimMatch
{
    public interface IScrimMessageBroadcastService
    {
        event EventHandler<SimpleMessageEventArgs> RaiseSimpleMessageEvent;

        event EventHandler<TeamPlayerChangeEventArgs> RaiseTeamPlayerChangeEvent;
        event EventHandler<PlayerStatUpdateEventArgs> RaisePlayerStatUpdateEvent;

        event EventHandler<PlayerLoginEventArgs> RaisePlayerLoginEvent;
        event EventHandler<PlayerLogoutEventArgs> RaisePlayerLogoutEvent;

        event EventHandler<MatchStateUpdateEventArgs> RaiseMatchStateUpdateEvent;

        event EventHandler<MatchTimerTickEventArgs> RaiseMatchTimerTickEvent;

        void BroadcastSimpleMessage(string message);

        void BroadcastTeamPlayerChangeMessage(TeamPlayerChangeMessage message);
        void BroadcastPlayerStatUpdateMessage(PlayerStatUpdateMessage message);

        void BroadcastPlayerLoginMessage(PlayerLoginMessage message);
        void BroadcastPlayerLogoutMessage(PlayerLogoutMessage message);

        void BroadcastMatchStateUpdateMessage(string message); // TODO: implement MatchStateUpdateMessage class
        void BroadcastMatchTimerTickMessage(MatchTimerTickMessage message);


    }
}
