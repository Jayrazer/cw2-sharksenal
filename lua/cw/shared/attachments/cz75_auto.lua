local att = {}
att.name = "cz75_auto"
att.displayName = "CZ 75 Automatic"
att.displayNameShort = "AUTO"
att.aimPos = {"AutoPos", "AutoAng"}

att.isSight = true
att.withoutRail = true

att.statModifiers = {RecoilMult = .1,
ReloadSpeedMult = -0.05,
SpreadPerShotMult = 0.1,
FireDelayMult = -.45}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/cz75_auto")
	att.description = {
	[1] = {t = "+ Machine pistol model", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "+ Extended 26rnd magazine", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	self.FOVPerShot = 0.4
	self:setBodygroup(self.FrameBGs.main, self.FrameBGs.auto)
	self:CycleFiremodes() 
	self.FireModes = {"semi", "safe", "auto"}
	self:CycleFiremodes() 
	self:CycleFiremodes() 
	self.Automatic = true
	
	self.Primary.ClipSize = 26
	self.Primary.ClipSize_Orig = 26
	
	self.Animations = {

	fire = {"fire_1", "fire_2", "fire_3"},
	fire_aim = "fire_aim",
	fire_last = "fire_last",
	fire_last_aim = "fire_last_aim",
	reload = "reload_auto",
	reload_empty = "reload_empty_auto",
	idle = "idle",
	draw = "draw"
}

end

function att:detachFunc()
	self.FOVPerShot = 0
	self:unloadWeapon()
	self:setBodygroup(self.FrameBGs.main, self.FrameBGs.semi)
	self:CycleFiremodes() 
	self.FireModes = {"semi","safe"}
	self:CycleFiremodes() 
	self:CycleFiremodes() 
	self.Automatic = false
	
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	
	self.Animations = {

	fire = {"fire_1", "fire_2", "fire_3"},
	fire_aim = "fire_aim",
	fire_last = "fire_last",
	fire_last_aim = "fire_last_aim",
	reload = "reload",
	reload_empty = "reload_empty",
	idle = "idle",
	draw = "draw"
}
	
end

CustomizableWeaponry:registerAttachment(att)