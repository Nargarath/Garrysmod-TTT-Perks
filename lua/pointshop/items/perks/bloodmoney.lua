ITEM.Name = 'Blood Money'
ITEM.Price = 2000
ITEM.Material = 'materials/mpel/money132.png'
ITEM.Except = true
ITEM.AllowedUserGroups = enderTTTPerks.allowUserGroups
 

function BloodMoney(victim, attacker, dmginfo)
	if victim != attacker and attacker:IsPlayer() and attacker:PS_HasItemEquipped('bloodmoney') then
		attacker:PS_GivePoints(enderTTTPerks.BloodMoneyPayout)
		attacker:ChatPrint("you received "..enderTTTPerks.BloodMoneyPayout.."points for kill:  "..victim:Nick().."!")
	end	
end


function ITEM:OnEquip(ply, modifications)
end

function ITEM:OnHolster(ply)
end



hook.Add("PlayerDeath", "BloodMoney", BloodMoney)