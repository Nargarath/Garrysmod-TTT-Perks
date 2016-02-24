ITEM.Name = "Jump Power Gold (240)" -- Name visto no PS
ITEM.Price = 2000 -- Custo
ITEM.Material = 'materials/mpel/jumping_darkgreen.png'
ITEM.Except = true
ITEM.AllowedUserGroups = enderTTTPerks.allowUserGroups


function ITEM:OnEquip(ply, modifications)
    ply:PS_HolsterItem('jumppowersilver')
	ply:SetJumpPower(enderTTTPerks.jumpGold)
	ply:ChatPrint("Jump Power on!")
end

function ITEM:OnHolster(ply)
	ply:SetJumpPower(enderTTTPerks.jumpGold-40)
	ply:ChatPrint("Jump Power off!")
end