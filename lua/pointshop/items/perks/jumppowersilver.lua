ITEM.Name = "Jump Power Silver (215)" -- Name visto no PS
ITEM.Price = 2000 -- Custo
ITEM.Material = 'materials/mpel/jumping_lightgreen.png'
ITEM.Except = true
ITEM.AllowedUserGroups = enderTTTPerks.allowUserGroups

function ITEM:OnEquip(ply, modifications)
    ply:PS_HolsterItem('jumppowergold')
	ply:SetJumpPower(enderTTTPerks.jumpSilver)
	ply:ChatPrint("Jump power on!")
end

function ITEM:OnHolster(ply)
	ply:SetJumpPower(enderTTTPerks.jumpSilver-15)
	ply:ChatPrint("Jump power off!")
end