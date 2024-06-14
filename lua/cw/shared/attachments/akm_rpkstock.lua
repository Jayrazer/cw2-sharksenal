local att = {}
att.name = "ha_akm_rpkstock"
att.displayName = "Heavy Stock"
att.displayNameShort = "HEAVY"
att.isBG = true
att.SpeedDec = 4

att.statModifiers = {

RecoilMult = -0.2,
OverallMouseSensMult = -0.15

}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/akm_dong")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.heavy)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)