ITEM.Name = 'Protective Armor'
ITEM.Price = 2000
ITEM.Material = 'materials/mpel/armor.png'
ITEM.Except = true
ITEM.AllowedUserGroups = enderTTTPerks.allowUserGroups

function ITEM:OnEquip(ply, modifications)
	
end

function ITEM:OnHolster(ply)
end

function Armor_onSpawn(ply)
		local totalarmor = ply:Armor() + enderTTTPerks.ArmorAddition
		if ply:PS_HasItemEquipped('armor') then
			ply:SetArmor(totalarmor)
			ply:ChatPrint("you've spawned with "..totalarmor.." armor.")
		end
end

hook.Add("PlayerSpawn", "Armor", Armor_onSpawn)



