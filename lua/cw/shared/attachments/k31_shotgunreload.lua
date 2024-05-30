local att = {}
att.name = "k31_sgload"
att.displayName = "Single round reload"
att.displayNameShort = "SNGL"

att.statModifiers = {
	OverallMouseSensMult = 0.15,
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/k31_sgload")
	att.description = {
	[1] = {t = "Reload individual rounds one at a time", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Variable reload time", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Cannot chamber extra round", c = CustomizableWeaponry.textColors.NEGATIVE}
	}
end

function att:attachFunc()

	self.Chamberable = false
	self.ShotgunReload = true
	self.Primary.ClipSize = 6
	self:unloadWeapon()
	
	self.Animations = {
	fire = {"fire_1", "fire_2"},
	fire_aim = "fire_aim",
	reload = "reload",
	reload_empty = "reload_empty",
	reload_start = "reload_start",
	insert = "reload_insert",
	reload_end = "reload_end",
	idle = "reload_end",
	draw = "draw"
	}

end

function att:detachFunc()

	self.Chamberable = true
	self.ShotgunReload = false
	self.Primary.ClipSize = 6
	
	self.Animations = {
	fire = {"fire_1", "fire_2"},
	fire_aim = "fire_aim",
	reload = "reload",
	reload_empty = "reload_empty",
	reload_start = "reload_start",
	insert = "reload_insert",
	reload_end = "reload_end",
	idle = "idle",
	draw = "draw"
	}
	
end

CustomizableWeaponry:registerAttachment(att)