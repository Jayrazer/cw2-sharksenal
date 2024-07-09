local att = {}
att.name = "ha_ithaca_barrel"
att.displayName = "Stakeout Barrel"
att.displayNameShort = "STAKEOUT"
att.isBG = true

att.statModifiers = {
ReloadSpeedMult = 0.15,
OverallMouseSensMult = 0.15,
HipSpreadMult = 0.1,
DrawSpeedMult = 0.15,
MaxSpreadIncMult = 0.2,
VelocitySensitivityMult = -0.2,
RecoilMult = 0.2
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/stakeout_barrel")
	att.description = {[1] = {t = "Short barrel & magazine tube.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.short)
	self:unloadWeapon()
	self.Primary.ClipSize = 5
	self.Primary.ClipSize_Orig = 5
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)