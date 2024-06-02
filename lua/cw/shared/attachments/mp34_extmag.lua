local att = {}
att.name = "ha_mp34_extmag"
att.displayName = "32-Round Magazine"
att.displayNameShort = "32RND"
att.isBG = true

att.statModifiers = {ReloadSpeedMult = -0.075,
OverallMouseSensMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp34_extmag")
	att.description = {[1] = {t = "Extended 45 round magazine.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.ext)
	self:unloadWeapon()
	self.Primary.ClipSize = 45
	self.Primary.ClipSize_Orig = 45
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)