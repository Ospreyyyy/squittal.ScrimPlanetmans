﻿using squittal.ScrimPlanetmans.ScrimMatch.Models;

namespace squittal.ScrimPlanetmans.ScrimMatch.Messages
{
    public class ScrimAssistActionEventMessage : ScrimActionEventMessage
    {
        public ScrimAssistActionEvent AssistEvent { get; set; }

        public ScrimAssistActionEventMessage(ScrimAssistActionEvent assistEvent)
        {
            AssistEvent = assistEvent;

            if (assistEvent.ActionType == ScrimActionType.OutsideInterference)
            {
                Info = GetOutsideInterferenceInfo(assistEvent);
            }
            else
            {
                Info = GetAssistInfo(assistEvent);
            }
        }

        private string GetOutsideInterferenceInfo(ScrimAssistActionEvent assistEvent)
        {
            Player player;
            string otherCharacterId;

            var actionDisplay = GetEnumValueName(assistEvent.ActionType);

            if (assistEvent.AttackerPlayer != null)
            {
                player = assistEvent.AttackerPlayer;
                otherCharacterId = assistEvent.VictimCharacterId;

                var playerName = player.NameDisplay;
                var outfitDisplay = !string.IsNullOrWhiteSpace(player.OutfitAlias)
                                        ? $"[{player.OutfitAlias}] "
                                        : string.Empty;

                return $"{actionDisplay} DMG ASSIST: {outfitDisplay}{playerName} [damaged] {otherCharacterId}";
            }
            else
            {
                player = assistEvent.VictimPlayer;
                otherCharacterId = assistEvent.AttackerCharacterId;

                var playerName = player.NameDisplay;
                var outfitDisplay = !string.IsNullOrWhiteSpace(player.OutfitAlias)
                                        ? $"[{player.OutfitAlias}] "
                                        : string.Empty;

                return $"{actionDisplay} DMG ASSISTED DEATH: {otherCharacterId} [damaged] {outfitDisplay}{playerName}";
            }
        }

        private string GetAssistInfo(ScrimAssistActionEvent assistEvent)
        {
            var attacker = assistEvent.AttackerPlayer;
            var victim = assistEvent.VictimPlayer;

            var attackerTeam = attacker.TeamOrdinal.ToString();

            var attackerName = attacker.NameDisplay;
            var victimName = victim.NameDisplay;

            var attackerOutfit = !string.IsNullOrWhiteSpace(attacker.OutfitAlias)
                                            ? $"[{attacker.OutfitAlias}] "
                                            : string.Empty;

            var victimOutfit = !string.IsNullOrWhiteSpace(victim.OutfitAlias)
                                            ? $"[{victim.OutfitAlias}] "
                                            : string.Empty;

            var actionDisplay = GetEnumValueName(assistEvent.ActionType);
            var pointsDisplay = GetPointsDisplay(assistEvent.Points);
            var typeDisplay = assistEvent.ActionType == ScrimActionType.UtilityAssist
                                ? "utility assist"
                                : "damage assist";


            return $"Team {attackerTeam} {actionDisplay}: {pointsDisplay} {attackerOutfit}{attackerName} [{typeDisplay}] {victimOutfit}{victimName}";
        }
    }
}
