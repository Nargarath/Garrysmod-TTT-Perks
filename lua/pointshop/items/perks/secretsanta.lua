ITEM.Name = 'Secret Santa'
ITEM.Price = 600
ITEM.Material = 'materials/mpel/present23.png'
ITEM.SingleUse = true


function ITEM:OnBuy(ply)
	local Receiver = table.Random(player.GetAll())
	while Receiver == ply do
		local Receiver = table.Random(player.GetAll())
	end
	local Item = table.Random(enderTTTPerks.SecretSantaGifts)
	Receiver:PS_GiveItem(Item)
	
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint(""..Receiver:Nick().." received "..Item.." from player:  "..ply:Nick().." as secret santa!")
	end	
end

function ITEM:OnHolster(ply)
end

