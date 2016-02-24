ITEM.Name = 'Regenerating Health'
ITEM.Price = 2000
ITEM.Material = 'materials/mpel/first-aid.png'
ITEM.Except = true
ITEM.AllowedUserGroups = enderTTTPerks.allowUserGroups



function ITEM:OnBuy(ply)
	ply:ChatPrint("Regeneration Perk on!")
	timer.Create("RegenHealth"..ply:Nick(), enderTTTPerks.RegenTime, 0,function()
				if ply:Health() < ply:GetMaxHealth() and ply:Alive() then
					ply:SetHealth(ply:Health() + enderTTTPerks.RegenHealth)
					
				end	
			end)
end

function ITEM:OnSell(ply)
	timer.Destroy("RegenHealth"..ply:Nick())
end

function ITEM:OnEquip(ply, modifications)
	ply:ChatPrint("Regeneration Perk on!")
	timer.Create("RegenHealth"..ply:Nick(), enderTTTPerks.RegenTime, 0,function()
				if ply:Health() < ply:GetMaxHealth() and ply:Alive() then
					ply:SetHealth(ply:Health() + enderTTTPerks.RegenHealth)
				end	
			end)
end

function ITEM:OnHolster(ply)
	ply:ChatPrint("Regeneration Perk off!!")
	timer.Destroy("RegenHealth")
end

