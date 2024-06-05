local att = {}
att.name = "ha_mp5_foldstock"
att.displayName = "Light Stock"
att.displayNameShort = "LIGHT"
att.isBG = true

att.statModifiers = {

RecoilMult = 0.2,
OverallMouseSensMult = 0.15

}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/retractablestock")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.fold)

end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)

end

CustomizableWeaponry:registerAttachment(att)