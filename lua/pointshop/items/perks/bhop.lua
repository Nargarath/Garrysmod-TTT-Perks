ITEM.Name = "BHop" -- Name visto no PS
ITEM.Price = 2000 -- Custo
ITEM.Material = 'materials/mpel/rabbits.png'
ITEM.Except = false
ITEM.AllowedUserGroups = enderTTTPerks.allowUserGroups


function ITEM:OnEquip(ply, modifications)
	ply:SetNWInt("bhop", 1)
	ply:ChatPrint("BHop on!")
	ply:PS_HolsterItem('doublejump')
end

function ITEM:OnHolster(ply)
	ply:SetNWInt("bhop", 0)
	ply:ChatPrint("BHop off!")
end