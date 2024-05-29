local att = {}
att.name = "ha_mp34_extmag"
att.displayName = "32-Round Magazine"
att.displayNameShort = "32rnd"
att.isBG = true

att.statModifiers = {ReloadSpeedMult = -0.075,
OverallMouseSensMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/rpkmag")
	att.description = {[1] = {t = "Extended 32 round magazine.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.ext)
	self:unloadWeapon()
	self.Primary.ClipSize = 32
	self.Primary.ClipSize_Orig = 32
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)