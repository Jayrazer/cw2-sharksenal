local att = {}
att.name = "ha_akm_shortbar"
att.displayName = "Krinkov Barrel"
att.displayNameShort = "KRINK"
att.isBG = true
att.aimPos = {"KrinkPos", "KrinkAng"}
att.SpeedDec = -5

att.statModifiers = {

RecoilMult = 0.25,
OverallMouseSensMult = 0.2,
AimSpreadMult = 0.1,
HipSpreadMult = 0.15,
FireDelayMult = -0.15

}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/akm_krink")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.light)
	
	self:setupCurrentIronsights(self.KrinkPos, self.KrinkAng)
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("Krink")
	end
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)