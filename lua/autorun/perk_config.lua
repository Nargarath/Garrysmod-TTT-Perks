enderTTTPerks = {}
print("TTT Perks fully Loaded")

if SERVER then
	resource.AddFile("materials/mpel/regen.png")
	resource.AddFile("materials/mpel/first-aid.png")
	resource.AddFile("materials/mpel/jumping28.png")
	resource.AddFile("materials/mpel/jumping_darkgreen.png")
	resource.AddFile("materials/mpel/jumping_lightgreen.png")
	resource.AddFile("materials/mpel/money132.png")
	resource.AddFile("materials/mpel/present23.png")
	resource.AddFile("materials/mpel/rabbits.png")
end


//allowed use perks
enderTTTPerks.allowUserGroups = {"superadmin"}

//jump
enderTTTPerks.jumpSilver = 215
enderTTTPerks.jumpGold = 240
 
//armor perk
enderTTTPerks.ArmorAddition = 10

//bloodmoney perk
enderTTTPerks.BloodMoneyPayout = 25

//vida extra perk
enderTTTPerks.extraHealth = 5

//regen perk
enderTTTPerks.RegenHealth = 1 -- regen per "RegenTime" variable seconds
enderTTTPerks.RegenTime = 5 -- regen time  (seconds) , ex: 5 = regen X HP each 5 seconds


//secret santa 

enderTTTPerks.SecretSantaGifts = { -- Itens can receive list.
	"afro",
	"backpack",
	"bombhead",
	"buckethat",
	"clockmask",
	"conehat",
	"doublejump",
	"headcrabhat",
	"lampshadehat",
	"melonhead",
	"monitorhead",
	"noentrymask",
	"panhat",
	"skullhead",
	"snowmanhead",
	"spotlighthead",
	"turtlehat",
	"tvhead",
	"creeper",
	"cursor",
	"eletric",
	"laser",
	"loltrail",
	"lovetrail",
	"plasmatrail",
	"portal",
	"questionmark",
	"redstars",
	"shoes",
	"smoke",
	"snowflake",
	"suit",
	"trainers",
	"tube"
}