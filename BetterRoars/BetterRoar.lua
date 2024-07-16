local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
eventFrame:SetScript("OnEvent", function(self, event, ...)
    local unit, _, spellID = ...
    if unit == "player" and GetShapeshiftForm() == 1 then -- Bear form
        if spellID == 6807 then -- Maul
            PlaySoundFile("Interface\\AddOns\\BetterRoars\\Maul.mp3")
        elseif spellID == 77758 then -- Thrash
            PlaySoundFile("Interface\\AddOns\\BetterRoars\\Thrash.mp3")
        elseif spellID == 33917 then -- Mangle
            PlaySoundFile("Interface\\AddOns\\BetterRoars\\Mangle.mp3")
        end
    end
end)



