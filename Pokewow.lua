function Pokewow_SlashCommandHandler(msg, editBox)
	if(msg == "t") then
		Pokefight_SlashCommandHandler(msg, editBox)
	else
		Pokedex_SlashCommandHandler(msg, editBox);
	end
end

function Pokewow_OnLoad()
	SlashCmdList["POKEWOW"] = Pokewow_SlashCommandHandler;
	SLASH_POKEWOW1 = "/pokewow";
	SLASH_POKEWOW2 = "/pw";

	local frame = getglobal("PokewowScripts");
	frame:RegisterEvent("ADDON_LOADED");
	frame:SetScript("OnEvent", Pokewow_OnEvent);
end

function Pokewow_OnEvent(self, event, ...)
	if(event == "ADDON_LOADED") then
		local addon = ...;
		if(addon == "Pokewow") then
			DEFAULT_CHAT_FRAME:AddMessage("YUP2");
			Pokestart_Loader();
		end
	end
end

-- pokefight stuff
--[[
]]--
-- pokedex stuff
--	else
	--	Pokedex_SlashCommandHandler(msg, editBox)
--	end
