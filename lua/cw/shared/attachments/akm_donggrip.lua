local att = {}
att.name = "ha_akm_foregrip"
att.displayName = "Foregrip"
att.displayNameShort = "FORE"
att.isBG = true

att.statModifiers = {

RecoilMult = -0.1,
OverallMouseSensMult = -0.15

}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/akm_dong")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.DongBGs.main, self.DongBGs.dong)
	
	self.Animations = {
		fire = {"fire_1_dong", "fire_2_dong"},
		fire_aim = {"fire_aim_dong"},
		reload = "reload_dong",
		reload_empty = "reload_empty_dong",
		idle = "idle_dong",
		draw = "draw_dong"
	}
	
	self:sendWeaponAnim("idle", 1, 0)

end

function att:detachFunc()
	self:setBodygroup(self.DongBGs.main, self.DongBGs.regular)
	
	self.Animations = {
		fire = {"fire_1", "fire_2"},
		fire_aim = {"fire_aim"},
		reload = "reload",
		reload_empty = "reload_empty",
		idle = "idle",
		draw = "draw"
	}
	
	self:sendWeaponAnim("idle", 1, 0)

end

CustomizableWeaponry:registerAttachment(att)