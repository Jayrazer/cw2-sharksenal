local att = {}
att.name = "ha_akm_nostock"
att.displayName = "Removed Stock"
att.displayNameShort = "NONE"
att.isBG = true
att.SpeedDec = -8

att.statModifiers = {

RecoilMult = 0.5,
OverallMouseSensMult = 0.4

}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/akm_dong")
	att.description = {
		[1] = {t = "Are you a madman?", c = CustomizableWeaponry.textColors.COSMETIC},
		}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)