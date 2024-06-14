local att = {}
att.name = "ha_akm_rpkbar"
att.displayName = "RPK Barrel"
att.displayNameShort = "RPK"
att.isBG = true
att.aimPos = {"RPKPos", "RPKAng"}
att.SpeedDec = 5

att.statModifiers = {

RecoilMult = -0.25,
OverallMouseSensMult = -0.1,
AimSpreadMult = -0.1,
HipSpreadMult = -0.15,
FireDelayMult = 0.05

}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/akm_dong")
	att.description = {
		[1] = {t = "Enables bipod functionality", c = CustomizableWeaponry.textColors.COSMETIC},
		}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.heavy)
	self.BipodInstalled = true
	
	self:setupCurrentIronsights(self.RPKPos, self.RPKAng)
	
	if not self:isAttachmentActive("sights") then
		self:updateIronsights("RPK")
	end
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self.BipodInstalled = false
	self:revertToOriginalIronsights()
end

CustomizableWeaponry:registerAttachment(att)