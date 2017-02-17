Category = {
	1,	-- Normal
	2,	-- Special
	3	-- Status

};
--[[
-- +target
-- + effect
-- + BP
-- 
--
"Normal",	-- 1
"Water",	-- 2
"Electric",	-- 3
"Fighting",	-- 4
"Ground",	-- 5
"Psychic",	-- 6
"Rock",		-- 7
"Fire",		-- 8
"Grass",	-- 9
"Ice",		-- 10
"Poison",	-- 11
"Flying",	-- 12
"Bug",		-- 13
"Ghost",	-- 14
"Dragon"	-- 15
]]--
TypeChart = {
	{1,1,1,1,1,1,0.5,1,1,1,1,1,1,0,1},
	{1,0.5,1,1,2,1,2,2,0.5,1,1,1,1,1,0.5},
	{1,2,0.5,1,0,1,1,1,0.5,1,1,2,1,1,0.5},
	{2,1,1,1,1,0.5,2,1,1,2,0.5,0.5,0.5,0,1},
	{1,1,2,1,1,1,2,2,0.5,1,2,0,0.5,1,1},
	{1,1,1,2,1,0.5,1,1,1,1,2,1,1,1,1},
	{1,1,1,0.5,0.5,1,1,2,1,2,1,2,2,1,1},
	{1,0.5,1,1,1,1,0.5,0.5,2,2,1,1,2,1,0.5},
	{1,2,1,1,2,1,2,0.5,0.5,1,0.5,0.5,0.5,1,0.5},
	{1,0.5,1,1,2,1,1,1,2,0.5,1,2,1,1,2},
	{1,1,1,1,0.5,1,0.5,1,2,1,0.5,1,2,0.5,1},
	{1,1,0.5,2,1,1,0.5,1,2,1,1,1,2,1,1},
	{1,1,1,0.5,1,2,1,0.5,2,1,2,0.5,1,0.5,1},
	{0,1,1,1,1,0,1,1,1,1,1,1,1,2,1},
	{1,1,1,1,1,1,1,1,1,1,1,1,1,1,2},
};
Movebase = {
	-- 1
	{
		name	= "Absorb",
		type	= 9,
		cat		= 2,
		power	= 20,
		acc		= 100,
		PP		= 25,
		desc	= "User recovers half the HP inflicted on opponent."
	},
	-- 2
	{
		name	= "Acid",
		type	= 11,
		cat		= 2,
		power	= 40,
		acc		= 100,
		PP		= 30,
		desc	= "May lower opponent\'s special Defense."
	},
	-- 3
	{
		name	= "Acid Armor",
		type	= 11,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 40,
		desc	= "Sharply raises user\'s Defense."
	},
	-- 4
	{
		name	= "Agility",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "Sharply raises user\'s Speed."
	},
	-- 5
	{
		name	= "Amnesia",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "Sharply raises user\'s Defense."
	},
	-- 6
	{
		name	= "Aurora Beam",
		type	= 10,
		cat		= 2,
		power	= 65,
		acc		= 100,
		PP		= 20,
		desc	= "May lower opponent\'s Attack."
	},
	-- 7
	{
		name	= "Barrage",
		type	= 1,
		cat		= 1,
		power	= 15,
		acc		= 85,
		PP		= 20,
		desc	= "Hits 2-5 times in one turn."
	},
	-- 8
	{
		name	= "Barrier",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "Sharply raises user\'s Defense."
	},
	-- 9
	{
		name	= "Bide",
		type	= 1,
		cat		= 1,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "User takes damage for two turns then strikes back double."
	},
	-- 10
	{
		name	= "Bind",
		type	= 1,
		cat		= 1,
		power	= 15,
		acc		= 85,
		PP		= 20,
		desc	= "Traps opponent, damaging them for 4-5 turns."
	},
	-- 11
	{
		name	= "Bite",
		type	= 1,
		cat		= 1,
		power	= 60,
		acc		= 100,
		PP		= 25,
		desc	= "May cause flinching."
	},
	-- 12
	{
		name	= "Blizzard",
		type	= 10,
		cat		= 2,
		power	= 110,
		acc		= 70,
		PP		= 5,
		desc	= "May freeze opponent."
	},
	-- 13
	{
		name	= "Body Slam",
		type	= 1,
		cat		= 1,
		power	= 85,
		acc		= 100,
		PP		= 15,
		desc	= "May paralyze opponent."
	},
	-- 14
	{
		name	= "Bone Club",
		type	= 5,
		cat		= 1,
		power	= 65,
		acc		= 85,
		PP		= 20,
		desc	= "May cause flinching."
	},
	-- 15
	{
		name	= "Bonemerang",
		type	= 5,
		cat		= 1,
		power	= 50,
		acc		= 90,
		PP		= 10,
		desc	= "Hits twice in one turn."
	},
	-- 16
	{
		name	= "Bubble",
		type	= 2,
		cat		= 2,
		power	= 40,
		acc		= 100,
		PP		= 30,
		desc	= "May lower opponent\'s Speed."
	},
	-- 17
	{
		name	= "Bubble Beam",
		type	= 2,
		cat		= 2,
		power	= 65,
		acc		= 100,
		PP		= 20,
		desc	= "May lower opponent\'s Speed."
	},
	-- 18
	{
		name	= "Clamp",
		type	= 2,
		cat		= 1,
		power	= 35,
		acc		= 85,
		PP		= 10,
		desc	= "Traps opponent, damaging them for 4-5 turns."
	},
	-- 19
	{
		name	= "Comet Punch",
		type	= 1,
		cat		= 1,
		power	= 18,
		acc		= 85,
		PP		= 15,
		desc	= "Hits 2-5 times in one turn."
	},
	-- 20
	{
		name	= "Confuse Ray",
		type	= 14,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 10,
		desc	= "Confuses opponent."
	},
	-- 21
	{
		name	= "Confusion",
		type	= 6,
		cat		= 2,
		power	= 50,
		acc		= 100,
		PP		= 25,
		desc	= "May confuse opponent."
	},
	-- 22
	{
		name	= "Constrict",
		type	= 1,
		cat		= 1,
		power	= 10,
		acc		= 100,
		PP		= 35,
		desc	= "May lower opponent\'s Speed by one stage."
	},
	-- 23
	{
		name	= "Conversion",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "Changes user\'s type to that of its first move."
	},
	-- 24
	{
		name	= "Counter",
		type	= 4,
		cat		= 1,
		power	= -1,
		acc		= 100,
		PP		= 20,
		desc	= "When hit by a Normal Attack, user strikes back with 2x power."
	},
	-- 25
	{
		name	= "Crabhammer",
		type	= 2,
		cat		= 1,
		power	= 100,
		acc		= 90,
		PP		= 10,
		desc	= "High critical hit ratio."
	},
	-- 26
	{
		name	= "Cut",
		type	= 1,
		cat		= 1,
		power	= 50,
		acc		= 95,
		PP		= 30,
		desc	= "TESTLOL"
	},
	-- 27
	{
		name	= "Defense Curl",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 40,
		desc	= "Raises user\'s Defense."
	},
	-- 28
	{
		name	= "Dig",
		type	= 5,
		cat		= 1,
		power	= 80,
		acc		= 100,
		PP		= 10,
		desc	= "Digs underground on first turn, attacks on second. Can also escape from caves."
	},
	-- 29
	{
		name	= "Disable",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 20,
		desc	= "Opponent can\'t use its last attack for a few turns."
	},
	-- 30
	{
		name	= "Dizzy Punch",
		type	= 1,
		cat		= 1,
		power	= 70,
		acc		= 100,
		PP		= 10,
		desc	= "May confuse opponent."
	},
	-- 31
	{
		name	= "Double Kick",
		type	= 4,
		cat		= 1,
		power	= 30,
		acc		= 100,
		PP		= 30,
		desc	= "Hits twice in one turn."
	},
	-- 32
	{
		name	= "Double Slap",
		type	= 1,
		cat		= 1,
		power	= 15,
		acc		= 85,
		PP		= 10,
		desc	= "Hits 2-5 times in one turn."
	},
	-- 33
	{
		name	= "Double Team",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 15,
		desc	= "Raises user\'s Evasiveness."
	},
	-- 34
	{
		name	= "Double-Edge",
		type	= 1,
		cat		= 1,
		power	= 120,
		acc		= 100,
		PP		= 15,
		desc	= "User receives recoil damage."
	},
	-- 35
	{
		name	= "Dragon Rage",
		type	=1,
		cat		= 2,
		power	= -1,
		acc		= 100,
		PP		= 10,
		desc	= "Always inflicts 40 HP."
	},
	-- 36
	{
		name	= "Dream Eater",
		type	= 6,
		cat		= 2,
		power	= 100,
		acc		= 100,
		PP		= 15,
		desc	= "User recovers half the HP inflicted on a sleeping opponent."
	},
	-- 37
	{
		name	= "Drill Peck",
		type	= 12,
		cat		= 1,
		power	= 80,
		acc		= 100,
		PP		= 20,
		desc	= "TESTLOL"
	},
	-- 38
	{
		name	= "Earthquake",
		type	= 5,
		cat		= 1,
		power	= 100,
		acc		= 100,
		PP		= 10,
		desc	= "Power is doubled if opponent is underground from using Dig."
	},
	-- 39
	{
		name	= "Egg Bomb",
		type	= 1,
		cat		= 1,
		power	= 100,
		acc		= 75,
		PP		= 10,
		desc	= "TESTLOL"
	},
	-- 40
	{
		name	= "Ember",
		type	= 8,
		cat		= 2,
		power	= 40,
		acc		= 100,
		PP		= 25,
		desc	= "May burn opponent."
	},
	-- 41
	{
		name	= "Explosion",
		type	= 1,
		cat		= 1,
		power	= 250,
		acc		= 100,
		PP		= 5,
		desc	= "User faints."
	},
	-- 42
	{
		name	= "Fire Blast",
		type	= 8,
		cat		= 2,
		power	= 110,
		acc		= 85,
		PP		= 5,
		desc	= "May burn opponent."
	},
	-- 43
	{
		name	= "Fire Punch",
		type	= 8,
		cat		= 1,
		power	= 75,
		acc		= 100,
		PP		= 15,
		desc	= "May burn opponent."
	},
	-- 44
	{
		name	= "Fire Spin",
		type	= 8,
		cat		= 2,
		power	= 35,
		acc		= 85,
		PP		= 15,
		desc	= "Traps opponent, damaging them for 4-5 turns."
	},
	-- 45
	{
		name	= "Fissure",
		type	= 5,
		cat		= 1,
		power	= -1,
		acc		= -1,
		PP		= 5,
		desc	= "One-Hit-KO, if it hits."
	},
	-- 46
	{
		name	= "Flamethrower",
		type	= 8,
		cat		= 2,
		power	= 90,
		acc		= 100,
		PP		= 15,
		desc	= "May burn opponent."
	},
	-- 47
	{
		name	= "Flash",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 20,
		desc	= "Lowers opponent\'s Accuracy."
	},
	-- 48
	{
		name	= "Fly",
		type	= 12,
		cat		= 1,
		power	= 90,
		acc		= 95,
		PP		= 15,
		desc	= "Flies up on first turn, attacks on second turn."
	},
	-- 49
	{
		name	= "Focus Energy",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "Increases critical hit ratio."
	},
	-- 50
	{
		name	= "Fury Attack",
		type	= 1,
		cat		= 1,
		power	= 15,
		acc		= 85,
		PP		= 20,
		desc	= "Hits 2-5 times in one turn."
	},
	-- 51
	{
		name	= "Fury Swipes",
		type	= 1,
		cat		= 1,
		power	= 18,
		acc		= 80,
		PP		= 15,
		desc	= "Hits 2-5 times in one turn."
	},
	-- 52
	{
		name	= "Glare",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 30,
		desc	= "Paralyzes opponent."
	},
	-- 53
	{
		name	= "Growl",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 40,
		desc	= "Lowers opponent\'s Attack."
	},
	-- 54
	{
		name	= "Growth",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 40,
		desc	= "Raises user\'s Attack and Special Attack."
	},
	-- 55
	{
		name	= "Guillotine",
		type	= 1,
		cat		= 1,
		power	= -1,
		acc		= -1,
		PP		= 5,
		desc	= "One-Hit-KO, if it hits."
	},
	-- 56
	{
		name	= "Gust",
		type	= 12,
		cat		= 2,
		power	= 40,
		acc		= 100,
		PP		= 35,
		desc	= "Hits Pokémon using Fly/Bounce with double power."
	},
	-- 57
	{
		name	= "Harden",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "Raises user\'s Defense."
	},
	-- 58
	{
		name	= "Haze",
		type	= 10,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "Resets all stat changes."
	},
	-- 59
	{
		name	= "Headbutt",
		type	= 1,
		cat		= 1,
		power	= 70,
		acc		= 100,
		PP		= 15,
		desc	= "May cause flinching."
	},
	-- 60
	{
		name	= "High Jump Kick",
		type	= 4,
		cat		= 1,
		power	= 130,
		acc		= 90,
		PP		= 10,
		desc	= "If it misses, the user loses half their HP."
	},
	-- 61
	{
		name	= "Horn Attack",
		type	= 1,
		cat		= 1,
		power	= 65,
		acc		= 100,
		PP		= 25,
		desc	= "TESTLOL"
	},
	-- 62
	{
		name	= "Horn Drill",
		type	= 1,
		cat		= 1,
		power	= -1,
		acc		= -1,
		PP		= 5,
		desc	= "One-Hit-KO, if it hits."
	},
	-- 63
	{
		name	= "Hydro Pump",
		type	= 2,
		cat		= 2,
		power	= 110,
		acc		= 80,
		PP		= 5,
		desc	= "TESTLOL"
	},
	-- 64
	{
		name	= "Hyper Beam",
		type	= 1,
		cat		= 2,
		power	= 150,
		acc		= 90,
		PP		= 5,
	desc	= "	User must recharge next turn."
	},
	-- 65
	{
		name	= "Hyper Fang",
		type	= 1,
		cat		= 1,
		power	= 80,
		acc		= 90,
		PP		= 15,
		desc	= "May cause flinching."
	},
	-- 66
	{
		name	= "Hypnosis",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= 60,
		PP		= 20,
		desc	= "Puts opponent to sleep."
	},
	-- 67
	{
		name	= "Ice Beam",
		type	= 10,
		cat		= 2,
		power	= 90,
		acc		= 100,
		PP		= 10,
		desc	= "May freeze opponent."
	},
	-- 68
	{
		name	= "Ice Punch",
		type	= 10,
		cat		= 1,
		power	= 75,
		acc		= 100,
		PP		= 15,
		desc	= "May freeze opponent."
	},
	-- 69
	{
		name	= "Jump Kick",
		type	= 4,
		cat		= 1,
		power	= 100,
		acc		= 95,
		PP		= 10,
		desc	= "If it misses, the user loses half their HP."
	},
	-- 70
	{
		name	= "Karate Chop",
		type	= 4,
		cat		= 1,
		power	= 50,
		acc		= 100,
		PP		= 25,
		desc	= "High critical hit ratio."
	},
	-- 71
	{
		name	= "Kinesis",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= 80,
		PP		= 15,
		desc	= "Lowers opponent\'s Accuracy."
	},
	-- 72
	{
		name	= "Leech Life",
		type	= 13,
		cat		= 1,
		power	= 20,
		acc		= 100,
		PP		= 15,
		desc	= "User recovers half the HP inflicted on opponent."
	},
	-- 73
	{
		name	= "Leech Seed",
		type	= 9,
		cat		= 3,
		power	= -1,
		acc		= 90,
		PP		= 10,
		desc	= "User steals HP from opponent each turn."
	},
	-- 74
	{
		name	= "Leer",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 30,
		desc	= "Lowers opponent\'s Defense."
	},
	-- 75
	{
		name	= "Lick",
		type	= 14,
		cat		= 1,
		power	= 30,
		acc		= 100,
		PP		= 30,
		desc	= "May paralyze opponent."
	},
	-- 76
	{
		name	= "Light Screen",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "Halves damage from Special attacks for 5 turns."
	},
	-- 77
	{
		name	= "Lovely Kiss",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 75,
		PP		= 10,
		desc	= "Puts opponent to sleep."
	},
	-- 78
	{
		name	= "Low Kick",
		type	= 4,
		cat		= 1,
		power	= 50,
		acc		= 100,
		PP		= 20,
		desc	= "The heavier the opponent, the stronger the attack."
	},
	-- 79
	{
		name	= "Meditate",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 40,
		desc	= "Raises user\'s Attack."
	},
	-- 80
	{
		name	= "Mega Drain",
		type	= 9,
		cat		= 2,
		power	= 40,
		acc		= 100,
		PP		= 15,
		desc	= "User recovers half the HP inflicted on opponent."
	},
	-- 81
	{
		name	= "Mega Kick",
		type	= 1,
		cat		= 1,
		power	= 120,
		acc		= 75,
		PP		= 5,
		desc	= "TESTLOL"
	},
	-- 82
	{
		name	= "Mega Punch",
		type	= 1,
		cat		= 1,
		power	= 80,
		acc		= 85,
		PP		= 20,
		desc	= "TESTLOL"
	},
	-- 83
	{
		name	= "Metronome",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "User performs any move in the game at random."
	},
	-- 84
	{
		name	= "Mimic",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "Copies the opponent\'s last move."
	},
	-- 85
	{
		name	= "Minimize",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "Sharply raises user\'s Evasiveness."
	},
	-- 86
	{
		name	= "Mirror Move",
		type	= 12,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "User performs the opponent\'s last move."
	},
	-- 87
	{
		name	= "Mist",
		type	= 10,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "User\'s stats cannot be changed for a period of time."
	},
	-- 88
	{
		name	= "Night Shade",
		type	= 14,
		cat		= 2,
		power	= -1,
		acc		= 100,
		PP		= 15,
		desc	= "Inflicts damage equal to user\'s level."
	},
	-- 89
	{
		name	= "Pay Day",
		type	= 1,
		cat		= 1,
		power	= 40,
		acc		= 100,
		PP		= 20,
		desc	= "A small amount of money is gained after the battle resolves."
	},
	-- 90
	{
		name	= "Peck",
		type	= 12,
		cat		= 1,
		power	= 35,
		acc		= 100,
		PP		= 35,
		desc	= "TESTLOL"
	},
	-- 91
	{
		name	= "Petal Dance",
		type	= 9,
		cat		= 2,
		power	= 120,
		acc		= 100,
		PP		= 10,
		desc	= "User attacks for 2-3 turns but then becomes confused."
	},
	-- 92
	{
		name	= "Pin Missile",
		type	= 13,
		cat		= 1,
		power	= 25,
		acc		= 95,
		PP		= 20,
		desc	= "Hits 2-5 times in one turn."
	},
	-- 93
	{
		name	= "Poison Gas",
		type	= 11,
		cat		= 3,
		power	= -1,
		acc		= 90,
		PP		= 40,
		desc	= "Poisons opponent."
	},
	-- 94
	{
		name	= "Poison Powder",
		type	= 11,
		cat		= 3,
		power	= -1,
		acc		= 75,
		PP		= 35,
		desc	= "Poisons opponent."
	},
	-- 95
	{
		name	= "Poison Sting",
		type	= 11,
		cat		= 1,
		power	= 15,
		acc		= 100,
		PP		= 35,
		desc	= "May poison the opponent."
	},
	-- 96
	{
		name	= "Pound",
		type	= 1,
		cat		= 1,
		power	= 40,
		acc		= 100,
		PP		= 35,
		desc	= "TESTLOL"
	},
	-- 97
	{
		name	= "Psybeam",
		type	= 6,
		cat		= 2,
		power	= 65,
		acc		= 100,
		PP		= 20,
		desc	= "May confuse opponent."
	},
	-- 98
	{
		name	= "Psychic",
		type	= 6,
		cat		= 2,
		power	= 90,
		acc		= 100,
		PP		= 10,
		desc	= "May lower opponent\'s Special Defense."
	},
	-- 99
	{
		name	= "Psywave",
		type	= 6,
		cat		= 2,
		power	= -1,
		acc		= 80,
		PP		= 15,
		desc	= "Inflicts damage 50-150% of user\'s level."
	},
	-- 100
	{
		name	= "Quick Attack",
		type	= 1,
		cat		= 1,
		power	= 40,
		acc		= 100,
		PP		= 30,
		desc	= "User attacks first."
	},
	-- 101
	{
		name	= "Rage",
		type	= 1,
		cat		= 1,
		power	= 20,
		acc		= 100,
		PP		= 20,
		desc	= "Raises user\'s Attack when hit."
	},
	-- 102
	{
		name	= "Razor Leaf",
		type	= 9,
		cat		= 1,
		power	= 55,
		acc		= 95,
		PP		= 25,
		desc	= "High critical hit ratio."
	},
	-- 103
	{
		name	= "Razor Wind",
		type	= 1,
		cat		= 2,
		power	= 80,
		acc		= 100,
		PP		= 10,
		desc	= "Charges on first turn, attacks on second. High critical hit ratio."
	},
	-- 104
	{
		name	= "Recover",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "User recovers half its max HP."
	},
	-- 105
	{
		name	= "Reflect",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "Halves damage from Normal Attacks for 5 turns."
	},
	-- 106
	{
		name	= "Rest",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "User sleeps for 2 turns, but user is fully healed."
	},
	-- 107
	{
		name	= "Roar",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "In battles, the opponent switches. In the wild, the Pokémon runs."
	},
	-- 108
	{
		name	= "Rock Slide",
		type	= 7,
		cat		= 1,
		power	= 75,
		acc		= 90,
		PP		= 10,
		desc	= "May cause flinching."
	},
	-- 109
	{
		name	= "Rock Throw",
		type	= 7,
		cat		= 1,
		power	= 50,
		acc		= 90,
		PP		= 15,
		desc	= "TESTLOL"
	},
	-- 110
	{
		name	= "Rolling Kick",
		type	= 4,
		cat		= 1,
		power	= 60,
		acc		= 85,
		PP		= 15,
		desc	= "May cause flinching."
	},
	-- 111
	{
		name	= "Sand Attack",
		type	= 5,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 15,
		desc	= "Lowers opponent\'s Accuracy."
	},
	-- 112
	{
		name	= "Scratch",
		type	= 1,
		cat		= 1,
		power	= 40,
		acc		= 100,
		PP		= 35,
		desc	= "TESTLOL"
	},
	-- 113
	{
		name	= "Screech",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 85,
		PP		= 40,
		desc	= "Sharply lowers opponent\'s Defense."
	},
	-- 114
	{
		name	= "Seismic Toss",
		type	= 4,
		cat		= 1,
		power	= -1,
		acc		= 100,
		PP		= 20,
		desc	= "Inflicts damage equal to user\'s level."
	},
	-- 115
	{
		name	= "Self-Destruct",
		type	= 1,
		cat		= 1,
		power	= 200,
		acc		= 100,
		PP		= 5,
		desc	= "User faints."
	},
	-- 116
	{
		name	= "Sharpen",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 30,
		desc	= "Raises user\'s Attack."
	},
	-- 117
	{
		name	= "Sing",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 55,
		PP		= 15,
		desc	= "Puts opponent to sleep."
	},
	-- 118
	{
		name	= "Skull Bash",
		type	= 1,
		cat		= 1,
		power	= 130,
		acc		= 100,
		PP		= 10,
		desc	= "Raises Defense on first turn, attacks on second."
	},
	-- 119
	{
		name	= "Sky Attack",
		type	= 12,
		cat		= 1,
		power	= 140,
		acc		= 90,
		PP		= 5,
		desc	= "Charges on first turn, attacks on second. May cause flinching."
	},
	-- 120
	{
		name	= "Slam",
		type	= 1,
		cat		= 1,
		power	= 80,
		acc		= 75,
		PP		= 20,
		desc	= "TESTLOL"
	},
	-- 121
	{
		name	= "Slash",
		type	= 1,
		cat		= 1,
		power	= 70,
		acc		= 100,
		PP		= 20,
		desc	= "High critical hit ratio."
	},
	-- 122
	{
		name	= "Sleep Powder",
		type	= 9,
		cat		= 3,
		power	= -1,
		acc		= 75,
		PP		= 15,
		desc	= "Puts opponent to sleep."
	},
	-- 123
	{
		name	= "Sludge",
		type	= 11,
		cat		= 2,
		power	= 65,
		acc		= 100,
		PP		= 20,
		desc	= "May poison opponent."
	},
	-- 124
	{
		name	= "Smog",
		type	= 11,
		cat		= 2,
		power	= 30,
		acc		= 70,
		PP		= 20,
		desc	= "May poison opponent."
	},
	-- 125
	{
		name	= "Smokescreen",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 20,
		desc	= "Lowers opponent\'s Accuracy."
	},
	-- 126
	{
		name	= "Soft-Boiled",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "User recovers half its max HP."
	},
	-- 127
	{
		name	= "Solar Beam",
		type	= 9,
		cat		= 2,
		power	= 120,
		acc		= 100,
		PP		= 10,
		desc	= "Charges on first turn, attacks on second."
	},
	-- 128
	{
		name	= "Sonic Boom",
		type	= 1,
		cat		= 2,
		power	= -1,
		acc		= 90,
		PP		= 20,
		desc	= "Always inflicts 20 HP."
	},
	-- 129
	{
		name	= "Spike Cannon",
		type	= 1,
		cat		= 1,
		power	= 20,
		acc		= 100,
		PP		= 15,
		desc	= "Hits 2-5 times in one turn."
	},
	-- 130
	{
		name	= "Splash",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 40,
		desc	= "Doesn\'t do ANYTHING."
	},
	-- 131
	{
		name	= "Spore",
		type	= 9,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 15,
		desc	= "Puts opponent to sleep."
	},
	-- 132
	{
		name	= "Stomp",
		type	= 1,
		cat		= 1,
		power	= 65,
		acc		= 100,
		PP		= 20,
		desc	= "May cause flinching."
	},
	-- 133
	{
		name	= "Strength",
		type	= 1,
		cat		= 1,
		power	= 80,
		acc		= 100,
		PP		= 15,
		desc	= "TESTLOL"
	},
	-- 134
	{
		name	= "String Shot",
		type	= 13,
		cat		= 3,
		power	= -1,
		acc		= 95,
		PP		= 40,
		desc	= "Sharply lowers opponent\'s Speed."
	},
	-- 135
	{
		name	= "Struggle",
		type	= 1,
		cat		= 1,
		power	= 50,
		acc		= 100,
		PP		= -1,
		desc	= "Only usable when all PP are gone. Hurts the user."
	},
	-- 136
	{
		name	= "Stun Spore",
		type	= 9,
		cat		= 3,
		power	= -1,
		acc		= 75,
		PP		= 30,
		desc	= "Paralyzes opponent."
	},
	-- 137
	{
		name	= "Submission",
		type	= 4,
		cat		= 1,
		power	= 80,
		acc		= 80,
		PP		= 25,
		desc	= "User receives recoil damage."
	},
	-- 138
	{
		name	= "Substitute",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "Uses HP to creates a decoy that takes hits."
	},
	-- 139
	{
		name	= "Super Fang",
		type	= 1,
		cat		= 1,
		power	= -1,
		acc		= 90,
		PP		= 10,
		desc	= "Always takes off half of the opponent\'s HP."
	},
	-- 140
	{
		name	= "Supersonic",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 55,
		PP		= 20,
		desc	= "Confuses opponent."
	},
	-- 141
	{
		name	= "Surf",
		type	= 2,
		cat		= 2,
		power	= 90,
		acc		= 100,
		PP		= 15,
		desc	= "Hits all adjacent Pokémon."
	},
	-- 142
	{
		name	= "Swift",
		type	= 1,
		cat		= 2,
		power	= 60,
		acc		= 8,
		PP		= 20,
		desc	= "Ignores Accuracy and Evasiveness."
	},
	-- 143
	{
		name	= "Swords Dance",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "Sharply raises user\'s Attack."
	},
	-- 144
	{
		name	= "Tackle",
		type	= 1,
		cat		= 1,
		power	= 50,
		acc		= 100,
		PP		= 35,
		desc	= "TESTLOL"
	},
	-- 145
	{
		name	= "Tail Whip",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 30,
		desc	= "Lowers opponent\'s Defense."
	},
	-- 146
	{
		name	= "Take Down",
		type	= 1,
		cat		= 1,
		power	= 90,
		acc		= 85,
		PP		= 20,
		desc	= "User receives recoil damage."
	},
	-- 147
	{
		name	= "Teleport",
		type	= 6,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "Allows user to flee wild battles; also warps player to last PokéCenter."
	},
	-- 148
	{
		name	= "Thrash",
		type	= 1,
		cat		= 1,
		power	= 120,
		acc		= 100,
		PP		= 10,
		desc	= "User attacks for 2-3 turns but then becomes confused."
	},
	-- 149
	{
		name	= "Thunder",
		type	= 3,
		cat		= 2,
		power	= 110,
		acc		= 70,
		PP		= 10,
		desc	= "May paralyze opponent."
	},
	-- 150
	{
		name	= "Thunder Punch",
		type	= 3,
		cat		= 1,
		power	= 75,
		acc		= 100,
		PP		= 15,
		desc	= "May paralyze opponent."
	},
	-- 151
	{
		name	= "Thunder Shock",
		type	= 3,
		cat		= 2,
		power	= 40,
		acc		= 100,
		PP		= 30,
		desc	= "May paralyze opponent."
	},
	-- 152
	{
		name	= "Thunder Wave",
		type	= 3,
		cat		= 3,
		power	= -1,
		acc		= 100,
		PP		= 20,
		desc	= "Paralyzes opponent."
	},
	-- 153
	{
		name	= "Thunderbolt",
		type	= 3,
		cat		= 2,
		power	= 90,
		acc		= 100,
		PP		= 15,
		desc	= "May paralyze opponent."
	},
	-- 154
	{
		name	= "Toxic",
		type	= 11,
		cat		= 3,
		power	= -1,
		acc		= 90,
		PP		= 10,
		desc	= "Badly poisons opponent."
	},
	-- 155
	{
		name	= "Transform",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 10,
		desc	= "User takes on the form and attacks of the opponent."
	},
	-- 156
	{
		name	= "Tri Attack",
		type	= 1,
		cat		= 2,
		power	= 80,
		acc		= 100,
		PP		= 10,
		desc	= "May paralyze, burn or freeze opponent."
	},
	-- 157
	{
		name	= "Twineedle",
		type	= 13,
		cat		= 1,
		power	= 25,
		acc		= 100,
		PP		= 20,
		desc	= "Hits twice in one turn. May poison opponent."
	},
	-- 158
	{
		name	= "Vice Grip",
		type	= 1,
		cat		= 1,
		power	= 55,
		acc		= 100,
		PP		= 30,
		desc	= "TESTLOL"
	},
	-- 159
	{
		name	= "Vine Whip",
		type	= 9,
		cat		= 1,
		power	= 45,
		acc		= 100,
		PP		= 25,
		desc	= "TESTLOL"
	},
	-- 160
	{
		name	= "Water Gun",
		type	= 2,
		cat		= 2,
		power	= 40,
		acc		= 100,
		PP		= 25,
		desc	= "TESTLOL"
	},
	-- 161
	{
		name	= "Waterfall",
		type	= 2,
		cat		= 1,
		power	= 80,
		acc		= 100,
		PP		= 15,
		desc	= "May cause flinching."
	},
	-- 162
	{
		name	= "Whirlwind",
		type	= 1,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 20,
		desc	= "In battles, the opponent switches. In the wild, the Pokémon runs."
	},
	-- 163
	{
		name	= "Wing Attack",
		type	= 12,
		cat		= 1,
		power	= 60,
		acc		= 100,
		PP		= 35,
		desc	= "TESTLOL"
	},
	-- 164
	{
		name	= "Withdraw",
		type	= 2,
		cat		= 3,
		power	= -1,
		acc		= -1,
		PP		= 40,
		desc	= "Raises user\'s Defense."
	},
	-- 165
	{
		name	= "Wrap",
		type	= 1,
		cat		= 1,
		power	= 15,
		acc		= 90,
		PP		= 20,
		desc	= "Traps opponent, damaging them for 4-5 turns."
	}
};
