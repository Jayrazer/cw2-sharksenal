local att = {}
att.name = "ha_akm_extmag"
att.displayName = "Extended Magazine"
att.displayNameShort = "EXTMAG"
att.isBG = true

att.statModifiers = {ReloadSpeedMult = -0.15,
OverallMouseSensMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/rpkmag")
	att.description = {[1] = {t = "Extended 40 round magazine.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.ext)
	self:unloadWeapon()
	self.Primary.ClipSize = 40
	self.Primary.ClipSize_Orig = 40
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)