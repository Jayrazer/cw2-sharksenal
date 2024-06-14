local att = {}
att.name = "ha_akm_foldstock"
att.displayName = "Light Stock"
att.displayNameShort = "LIGHT"
att.isBG = true
att.SpeedDec = -3

att.statModifiers = {

RecoilMult = 0.15,
OverallMouseSensMult = 0.15

}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/akm_dong")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.light)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)