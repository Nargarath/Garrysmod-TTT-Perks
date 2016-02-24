ITEM.Name = "Bonus Health (+5)" 
ITEM.Price = 2000 
ITEM.Material = 'materials/mpel/first-aid.png'
ITEM.Except = false
ITEM.AllowedUserGroups = enderTTTPerks.allowUserGroups

 function ITEM:OnBuy(ply)
	ply:SetMaxHealth(100+enderTTTPerks.extraHealth)
	ply:ChatPrint("Bonus HP Ativo!")
end

function ITEM:OnSell(ply)
	ply:SetMaxHealth(100)
end
 
function ITEM:OnEquip(ply, modifications)
	ply:SetMaxHealth(100+enderTTTPerks.extraHealth)
	ply:ChatPrint("Bonus HP Ativo!")
end

function ITEM:OnHolster(ply)
	ply:SetMaxHealth(100+enderTTTPerks.extraHealth)
	ply:ChatPrint("Bonus HP Inativo!")
end