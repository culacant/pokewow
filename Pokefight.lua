local opponent = "";

local pokemon1 = {
	id = 0,
	evasion = 1,
	accuracy = 1,
};
local pokemon2 = {
	name = "",
	id = 0,
	curhp = 0,
	maxhp = 0,
	level = 0,
	type1 = 11,
	type2 = 12,
	defence	= 50,
	evasion = 1
};

pokemon1.id = 1;

function Pokefight_OnLoad()
	local frame = getglobal("PokefightScripts");
	frame:RegisterEvent("CHAT_MSG_ADDON");
	frame:SetScript("OnEvent", Pokefight_OnEvent);

end


function Pokefight_PokemonDialog()
	local pb = getglobal("Pokebelt");
	pb:Show();
end

function Pokebelt_OnShow()
	local pokeballs = {
		getglobal("Pokebelt_Pokeball1"),
		getglobal("Pokebelt_Pokeball2"),
		getglobal("Pokebelt_Pokeball3"),
		getglobal("Pokebelt_Pokeball4"),
		getglobal("Pokebelt_Pokeball5"),
		getglobal("Pokebelt_Pokeball6")
	};
	for i=1,6,1 do
		if(savedpokemon[i]) then
			pokeballs[i]:Enable();
			
			pokeballs[i]:SetNormalTexture("Interface\\AddOns\\Pokewow\\resources\\" ..savedpokemon[i].id.. ".tga");
			pokeballs[i]:SetPushedTexture("Interface\\AddOns\\Pokewow\\resources\\" ..savedpokemon[i].id.. ".tga");
		else
			pokeballs[i]:SetDisabledTexture("Interface\\AddOns\\Pokewow\\resources\\Cross.tga");
			pokeballs[i]:Disable();
		end
	end
	local xpb = {
		getglobal("Pokebelt_xpBar1"),
		getglobal("Pokebelt_xpBar2"),
		getglobal("Pokebelt_xpBar3"),
		getglobal("Pokebelt_xpBar4"),
		getglobal("Pokebelt_xpBar5"),
		getglobal("Pokebelt_xpBar6")
	};
	local hpb = {
		getglobal("Pokebelt_hpBar1"),
		getglobal("Pokebelt_hpBar2"),
		getglobal("Pokebelt_hpBar3"),
		getglobal("Pokebelt_hpBar4"),
		getglobal("Pokebelt_hpBar5"),
		getglobal("Pokebelt_hpBar6")
	};
	for i=1,6,1 do
		hpb[i]:SetTexCoord(0,1,0,0.3);
		xpb[i]:SetTexCoord(0,1,0.4,0.6);
		if(savedpokemon[i]) then
			local hpwidth = 104 * (savedpokemon[i].curHP/savedpokemon[i].maxHP);
			local xpwidth = 104 * (savedpokemon[i].xp/savedpokemon[i].level^3);
			hpb[i]:SetWidth(hpwidth);
			xpb[i]:SetWidth(xpwidth);
		else
			hpb[i]:Hide();
			xpb[i]:Hide();
		end
	end

	local names = {
		getglobal("Pokebelt_Name1"),
		getglobal("Pokebelt_Name2"),
		getglobal("Pokebelt_Name3"),
		getglobal("Pokebelt_Name4"),
		getglobal("Pokebelt_Name5"),
		getglobal("Pokebelt_Name6")
	};
	local levels= {
		getglobal("Pokebelt_lvl1"),
		getglobal("Pokebelt_lvl2"),
		getglobal("Pokebelt_lvl3"),
		getglobal("Pokebelt_lvl4"),
		getglobal("Pokebelt_lvl5"),
		getglobal("Pokebelt_lvl6")
	};
	for i=1,6,1 do
		if(savedpokemon[i]) then
			names[i]:SetText(savedpokemon[i].name);
			levels[i]:SetText("LVL " .. savedpokemon[i].level);
		end
	end
end

function PokefightMain_OnLoad()
	local bg = getglobal("PokefightMain_bg");
	bg:SetTexCoord(0, 0.9375, 0, 0.75);

	local hpb1 = getglobal("PokefightMain_p1HP");
	local hpb2 = getglobal("PokefightMain_p2HP");
	local ppb = getglobal("PokefightMain_MovePP");

	hpb1:SetTexCoord(0,1,0,0.3);
	hpb2:SetTexCoord(0,1,0,0.3);
	ppb:SetTexCoord(0,1,0.7,1);
end

function Pokefight_SlashCommandHandler(msg, editBox)
-- duel request
	if(UnitName("target")) then
		opponent = UnitName("target");
		local MSG_PREFIX = "POKE";
		SendAddonMessage(MSG_PREFIX, "DUELREQ", "WHISPER", opponent);
	else
		DEFAULT_CHAT_FRAME:AddMessage("No target!");
	end
end

function DuelDecline()
	local frame = getglobal("PokefightDuelDialog");
	if(frame) then
		frame:Hide();
	end
	SendAddonMessage("POKE", "DUELDEC", "WHISPER", opponent);
end

function DuelAccept()
	local frame = getglobal("PokefightDuelDialog");
	if(frame) then
		frame:Hide();
	end
	SendAddonMessage("POKE", "DUELACC", "WHISPER", opponent);

	local frame = getglobal("PokefightMain");
	if(frame) then
		frame:Show();
	end
end

function Pokefight_OnEvent(self, event, ...)
	if(event == "CHAT_MSG_ADDON") then
		local prefix, message, channel, sender = ...
		if(prefix == "POKE") then
			DEFAULT_CHAT_FRAME:AddMessage("ADDON MESSAGE: " .. message);
			if(message == "DUELREQ") then
				opponent = sender;
				local frame = getglobal("PokefightDuelDialog");
				if(frame) then
					frame:Show();
				end
			elseif(message == "DUELACC") then
				DEFAULT_CHAT_FRAME:AddMessage(opponent .. " accepted duel!");

				local frame = getglobal("PokefightMain");
				if(frame) then
					frame:Show();
				end
				opponent = sender;

			elseif(message == "DUELDEC") then
				DEFAULT_CHAT_FRAME:AddMessage(opponent .. " declined duel.");
			else
				local OPCODE, data = strsplit(" ", message, 2);
				if(OPCODE == "SWITCH") then
					local name, id, curhp, maxhp, level, type1, type2 ,evasion = strsplit(" ", data);
					SwitchOpponent(name, id, curhp, maxhp, level, type1, type2, defence, evasion);
				elseif (OPCODE == "ATK") then
					local atktable = {strsplit(" ", data)}; 

					local move, hit, eff, crit, dmg = 0;
					hit = 1;
					move = atktable[1];

					local i = 1;
					while(atktable[i]) do
						if(atktable[i] == "MISS") then
							hit = 0;
						elseif(atktable[i] == "CRIT") then
							crit = 1;
						elseif(atktable[i] == "NEFF") then
							eff = 0;
						elseif(atktable[i] == "BEFF") then
							eff = 1;
						elseif(atktable[i] == "SEFF") then
							eff = 2;
						elseif(tonumber(atktable[i]) ~= nil) then
							dmg = atktable[i];
						end
						i = i + 1;
					end
					HandleAttack(move, hit, eff, crit, dmg);
					DEFAULT_CHAT_FRAME:AddMessage(move .. hit .. eff .. crit .. dmg);
				end
			end
		end
	end
end
--[[
				elseif (OPCODE == "ATK") then
-- ATK MOVE
-- ATK MOVE MISS
-- ATK MOVE NEFF
-- ATK MOVE DMG
-- ATK MOVE CRIT DMG
-- ATK MOVE SEFF DMG 
-- ATK MOVE BEFF DMG	- barely effective
					local atktable = {strsplit(" ", data)}; 

					local move, hit, eff, crit, dmg = 0;
					hit = 1;
					move = atktable[1];

					local i = 1;
					while(atktable[i]) do
						if(atktable[i] == "MISS") then
							hit = 0;
						elseif(atktable[i] == "CRIT") then
							crit = 1;
						elseif(atktable[i] == "NEFF") then
							eff = 0;
						elseif(atktable[i] == "BEFF") then
							eff = 1;
						elseif(atktable[i] == "SEFF") then
							eff = 2;
						elseif(tonumber(atktable[i]) ~= nil) then
							dmg = atktable[i];
						end
					end
					HandleAttack(move, hit, eff, crit, dmg);
				end
					]]--

function SwitchOpponent(NAME, id, curhp, maxhp, level,type1,type2,defence,evasion)
	pokemon2 = {
		name,
		id,
		curhp,
		maxhp,
		level,
		type1,
		type2,
		defence,
		evasion
	};
	local pic = getglobal("PokefightMain_Pokemon2");
	local name = getglobal("PokefightMain_p2Name");
	local hpb = getglobal("PokefightMain_p2HP");
	local hpv = getglobal("PokefightMain_p2HPText");

	pic:SetTexture("Interface\\AddOns\\Pokewow\\resources\\" .. id .. ".tga");
	name:SetText(NAME .. "|nLVL: " .. level);
	local hpwidth = 300 * (curhp/maxhp);
	hpb:SetWidth(hpwidth);
	hpv:SetText(curhp .. "/" .. maxhp);
end

function Switch(pokemon)
	pokemon1.id = pokemon;
	local pic = getglobal("PokefightMain_Pokemon1");
	local name = getglobal("PokefightMain_p1Name");
	local hpb = getglobal("PokefightMain_p1HP");
	local hpv = getglobal("PokefightMain_p1HPText");
	local pb = getglobal("Pokebelt");
	pb:Hide()
	local movebuttons= {
		getglobal("PokefightMain_Move1"),
		getglobal("PokefightMain_Move2"),
		getglobal("PokefightMain_Move3"),
		getglobal("PokefightMain_Move4")
	}
	for i=1,4,1 do
		if(savedmovesets[pokemon1.id][i]) then
			movebuttons[i]:SetText(Movebase[savedmovesets[pokemon1.id][i].id].name);
			movebuttons[i]:Show();
		else
			movebuttons[i]:Hide();
		end
	end

	pic:SetTexture("Interface\\AddOns\\Pokewow\\resources\\" .. savedpokemon[pokemon1.id].id.. ".tga");
	name:SetText(savedpokemon[pokemon1.id].name .. "|nLVL: " .. savedpokemon[pokemon1.id].level);
	local hpwidth = 300 * (savedpokemon[pokemon1.id].curHP/savedpokemon[pokemon1.id].maxHP);
	hpb:SetWidth(hpwidth);
	hpv:SetText(savedpokemon[pokemon1.id].curHP .. "/" .. savedpokemon[pokemon1.id].maxHP);

	Pokefight_MoveInfo(1);

	SendAddonMessage("POKE", "SWITCH " .. savedpokemon[pokemon1.id].name .. " " .. savedpokemon[pokemon1.id].id .. " " .. savedpokemon[pokemon1.id].curHP .. " " .. savedpokemon[pokemon1.id].maxHP .. " " .. savedpokemon[pokemon1.id].level .. " " .. savedpokemon[pokemon1.id].type1 .. " " .. savedpokemon[pokemon1.id].type2 .. " " .. savedpokemon[pokemon1.id].def .. " ".. pokemon1.evasion,"WHISPER", opponent);
end

function Pokefight_MoveInfo(arg)
	local desc = getglobal("PokefightMain_MoveDesc");
	local mtype = getglobal("PokefightMain_MoveType");
	local ppb = getglobal("PokefightMain_MovePP");
	local ppv = getglobal("PokefightMain_PPText");

	desc:SetText(Movebase[savedmovesets[pokemon1.id][arg].id].desc);

	local x = Movebase[savedmovesets[pokemon1.id][arg].id].type *  0.0625;
	mtype:SetTexCoord(x,x + 0.0625 ,0,1);

	local ppwidth = 150 * (savedmovesets[pokemon1.id][arg].PP/Movebase[savedmovesets[pokemon1.id][arg].id].PP);
	ppb:SetWidth(ppwidth);

	ppv:SetText(savedmovesets[pokemon1.id][arg].PP .. "/" .. Movebase[savedmovesets[pokemon1.id][arg].id].PP);
end

--[[
-- needed for damage calculation:
--
-- defender type
--
-- status effects
--
-- attacker type
-- Same-type attack bonus
-- crital hit chance
-- randomised damage
--
-- hit chance: accuracy + move hit chance + evasion
]]--
function Pokefight_Attack(arg)
	local pp = savedmovesets[pokemon1.id][arg].PP;
	local msg;
	if(pp > 0) then
		msg = "ATK " .. Movebase[savedmovesets[pokemon1.id][arg].id].name .. " ";

		LogSend(savedpokemon[pokemon1.id].name .. " uses " .. Movebase[savedmovesets[pokemon1.id][arg].id].name);

		savedmovesets[pokemon1.id][arg].PP = pp -1;
-- hit chance
		local hitchance = ((Movebase[savedmovesets[pokemon1.id][arg].id].acc/100) * (pokemon1.accuracy/ pokemon2.evasion))*100;
		if( hitchance > 100) then
			hitchance = 100;
		end

		if( random(1,100) < hitchance) then
-- damage modifiers
			local STAB;
			if(savedpokemon[pokemon1.id].type1 ==  Movebase[savedmovesets[pokemon1.id][arg].id].type or savedpokemon[pokemon1.id].type2 ==  Movebase[savedmovesets[pokemon1.id][arg].id].type) then
				STAB = 1.5;
			else
				STAB = 1;
			end

			local typeBonus = TypeChart[Movebase[savedmovesets[pokemon1.id][arg].id].type][pokemon2.type1] * TypeChart[Movebase[savedmovesets[pokemon1.id][arg].id].type][pokemon2.type2];
			
			if(typeBonus == 0) then
				msg = msg .. "NEFF ";
				LogSend("It's not effective...");
			elseif (typeBonus < 1) then
				msg = msg .. "BEFF ";
				LogSend("It's not very effective...");
			elseif (typeBonus > 1) then
				msg = msg .. "SEFF ";
				LogSend("It's super effective!");
			end

			local rand = random(85,100)/100;
-- crit
			local critmod = 1;
			local critchance = savedpokemon[pokemon1.id].speed/512*1000;
			if(random(1,100) < critchance) then
				critmod = (savedpokemon[pokemon1.id].level*2+5)/savedpokemon[pokemon1.id].level+5;
			end
			if(critmod > 1) then
				msg = msg .. "CRIT ";
				LogSend("Critical hit!");
			end

			local mod = STAB * typeBonus * critmod * rand;
			local damage = (((2*savedpokemon[pokemon1.id].level + 10)/250)*(savedpokemon[pokemon1.id].atk/pokemon2.defence)*Movebase[savedmovesets[pokemon1.id][arg].id].power + 2)*mod
			msg = msg .. damage;
			DEFAULT_CHAT_FRAME:AddMessage("AAA");
			DEFAULT_CHAT_FRAME:AddMessage("damage: " .. damage .. " mod: " .. mod .. " STAB: " .. STAB .. " type: " ..  typeBonus .." crit: " .. critchance .. " random:" .. rand);
		else
			LogSend("... But it missed!");
			msg = msg .. "MISS";
		end
	else
		LogSend("No PP left for that move!");
	end
	DEFAULT_CHAT_FRAME:AddMessage("msg: " .. msg);
	SendAddonMessage(MSG_PREFIX, msg, "WHISPER", opponent);
end


function LogSend(arg)
	local clog = getglobal("PokefightMain_CombatLog");
	local text = clog:GetText();
	if(text) then
		arg = arg .. "|n" .. text;
	end
	clog:SetText(arg);
end

function HandleAttack(move, hit, eff, crit, dmg)
	LogSend(pokemon2.name .. " uses " .. move);
	if(hit == 0) then
		LogSend("... But it missed!");
	end
	if(eff == 0) then
		LogSend("It's not effective...");
	elseif(eff == 1) then
		LogSend("It's not very effective...");
	elseif(eff == 2) then
		LogSend("It's super effective!");
	end
	if(crit == 1) then
		LogSend("Critical hit!");
	end
	savedpokemon[pokemon1.id].curhp = savedpokemon[pokemon1.id].curhp - dmg;
-- lose battle if under 0 hp
end

--[[
-- ATK MOVE
-- ATK MOVE MISS
-- ATK MOVE NEFF
-- ATK MOVE DMG
-- ATK MOVE CRIT DMG
-- ATK MOVE SEFF DMG 
-- ATK MOVE BEFF DMG	- barely effective
--
--SendAddonMessage(MSG_PREFIX, "ATK" .. "MISS", "WHISPER", opponent);
--
-- + move name
-- +damage
--cases:
--	miss
--	not effective
--
--	hit
--		not very effective
--		super effective
--			crit
]]--
