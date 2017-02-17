local index = 1
local curpokemon = 0;

function Pokedex_OnLoad()

end
function PokeDex_OnShow()
	local pokeballs = {
		getglobal("PokedexMain_Pokeball1"),
		getglobal("PokedexMain_Pokeball2"),
		getglobal("PokedexMain_Pokeball3"),
		getglobal("PokedexMain_Pokeball4"),
		getglobal("PokedexMain_Pokeball5"),
		getglobal("PokedexMain_Pokeball6")
	}
	for i=1,6,1 do
		if(savedpokemon[i]) then
			pokeballs[i]:Show();
			pokeballs[i]:SetNormalTexture("Interface\\AddOns\\Pokewow\\resources\\" ..savedpokemon[i].id.. ".tga");
			pokeballs[i]:SetPushedTexture("Interface\\AddOns\\Pokewow\\resources\\" ..savedpokemon[i].id.. ".tga");
		end
	end
end

function Pokedex_SlashCommandHandler(msg,editBox)
	local frame = getglobal("PokedexMain")
	if(frame) then
		if(frame:IsVisible()) then
			frame:Hide();
		else
			frame:Show();
			PokeDex_OnShow();
			Pokedex_SetIndex(index);
		end
	end
end

function Pokedex_Next()
	index = index + 1;
	if(index > 151) then
		index = 1;
	end
	Pokedex_SetIndex(index)
end
function Pokedex_Prev()
	index = index - 1;
	if(index < 1) then
		index = 151;
	end
	Pokedex_SetIndex(index)
end
function Pokedex_SwitchStats()
	local stats 	= getglobal("PokedexMain_PokeStats");
	local type1 	= getglobal("PokedexMain_Type1");
	local type2 	= getglobal("PokedexMain_Type2");

	local inv		= getglobal("Pokeinv");

	local button	= getglobal("PokedexMain_StatsButton");

	local tstats	= getglobal("PokedexMain_BaseStats");
	if(tstats:IsShown()) then
		tstats:Hide();
		stats:Hide();
		type1:Hide();
		type2:Hide();
		inv:Show();
		button:SetText("Stats2")
	else
		tstats:Show();
		stats:Show();
		type1:Show();
		type2:Show();
		inv:Hide();
		button:SetText("Stats1")
	end
end

function Pokedex_Pokeball_Click(arg)
	Pokedex_SetIndex(savedpokemon[arg].id);
	PokeInv(arg);
end

function Pokedex_SetIndex(arg)
	local sprite 	= getglobal("PokedexMain_Sprite");
	local id 		= getglobal("PokedexMain_ID");
	local stats 	= getglobal("PokedexMain_PokeStats");
	local type1 	= getglobal("PokedexMain_Type1");
	local type2 	= getglobal("PokedexMain_Type2");
	local desc		= getglobal("PokedexMain_Desc");

	local button	= getglobal("PokedexMain_StatsButton");

	button:Disable();

	if(not stats:IsShown()) then
		Pokedex_SwitchStats()
	end

	if(sprite) then
		sprite:SetTexture("Interface\\AddOns\\Pokewow\\resources\\" .. arg .. ".tga");
	end
	if(id) then
		id:SetText("#" .. arg .. ": " .. PokeBase[arg].name .. " ");
	end
	if(stats) then
		stats:SetText("" .. PokeBase[arg].hp .. "\n" .. PokeBase[arg].atk .. "\n" .. PokeBase[arg].def.. "\n" ..PokeBase[arg].special.. "\n".. PokeBase[arg].speed .. " ");
	end
	if(type1) then
		x = PokeBase[arg].type1 *  0.0625;
		type1:SetTexCoord(x,x + 0.0625,0,1);
	end
	if(type2) then
		x = PokeBase[arg].type2 *  0.0625;
		type2:SetTexCoord(x,x + 0.0625,0,1);
	end
	if(desc) then
		desc:SetText("" ..PokeBase[arg].desc.. "");
	end
end

function PokeInv(arg)
	curpokemon = arg;

	local lvl		= getglobal("Pokeinv_lvlText");
	local hp		= getglobal("Pokeinv_hpText");
	local xp		= getglobal("Pokeinv_xpText");

	local hpb 		= getglobal("Pokeinv_hpBar");
	local xpb 		= getglobal("Pokeinv_xpBar");

	local name 		= getglobal("Pokeinv_Name");

	local button	= getglobal("PokedexMain_StatsButton");

	local stats 	= getglobal("PokedexMain_PokeStats");

	if(stats:IsShown()) then
		Pokedex_SwitchStats()
	end


	local movebuttons= {
		getglobal("Pokeinv_Move1"),
		getglobal("Pokeinv_Move2"),
		getglobal("Pokeinv_Move3"),
		getglobal("Pokeinv_Move4")
	}
	for i=1,4,1 do
		if(savedmovesets[curpokemon][i]) then
			movebuttons[i]:SetText(Movebase[savedmovesets[curpokemon][i].id].name);
			movebuttons[i]:Show();
		else
			movebuttons[i]:Hide();
		end
	end

	button:Enable();

	hpb:SetTexCoord(0,1,0,0.3);
	xpb:SetTexCoord(0,1,0.4,0.6);

	local hpwidth = 104 * (savedpokemon[arg].curHP/savedpokemon[arg].maxHP);
	local xpwidth = 104 * (savedpokemon[arg].xp/savedpokemon[arg].level^3);
	hp:SetText("" ..savedpokemon[arg].curHP.. "/" ..savedpokemon[arg].maxHP.. "");
	hpb:SetWidth(hpwidth);

	xp:SetText("" ..savedpokemon[arg].xp..  "/" ..(savedpokemon[arg].level^3).."");
	xpb:SetWidth(xpwidth);

	lvl:SetText("LVL " ..savedpokemon[arg].level.. "");

	name:SetText("" ..savedpokemon[arg].name.. "");
end

function Pokeinv_Move(arg)
	local stats = getglobal("Pokeinv_MoveStatValues");
	local movetype	= getglobal("Pokeinv_MoveType");
	local move = Movebase[savedmovesets[curpokemon][arg].id];
	local x = move.type *  0.0625;
	movetype:SetTexCoord(x,x + 0.0625,0,1);

	local x = move.power;
	if(x == -1) then
		x = 'N/A';
	end
	stats:SetText("|n" ..x.. "|n" ..move.acc.. "%|n" ..savedmovesets[curpokemon][arg].PP.. "/" ..move.PP.. "");
end
