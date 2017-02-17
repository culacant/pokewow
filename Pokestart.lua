function Pokestart_OnLoad()
end
function Pokestart_SelectStarter(i)
	savedpokemon = {};
	savedmovesets = {};
	savedpokemon[1] ={
--		name = "AAA",
		id 		= i,
		type1	= PokeBase[i].type1,
		type2	= PokeBase[i].type2,
		level	= 5,
		xp		= 0,
		maxHP	= PokeBase[i].hp,
		curHP	= PokeBase[i].hp,
		atk		= PokeBase[i].atk,
		def		= PokeBase[i].def,
		special	= PokeBase[i].special,
		speed	= PokeBase[i].speed,
	};
	savedmovesets[1] = {
		{
			id = 144, 	-- Tackle
			PP = 5
		},
		{
			id = 53, 	-- Growl
			PP = 3
		},
		{
			id = 31,	-- Double Kick
			PP = 5
		}
	};
	local edit = getglobal("PokestartRename_Namebox");
	edit:SetText(PokeBase[i].name);
	local frame = getglobal("PokestartRename");
	frame:Show();
end
function Pokestart_Rename()
	local edit = getglobal("PokestartRename_Namebox");
	savedpokemon[1].name = edit:GetText();
	DEFAULT_CHAT_FRAME:AddMessage(edit:GetText());
	local frame = getglobal("PokestartRename");
	local frame2 = getglobal("PokestartMain");
	frame:Hide();
	frame2:Hide();
end
function Pokestart_Loader()
	if(savedpokemon == nil) then
		local frame = getglobal("PokestartMain");
		frame:Show();
	end
end
