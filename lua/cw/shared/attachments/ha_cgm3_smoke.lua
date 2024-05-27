local att = {}
att.name = "ha_cgm3_smoke"
att.displayName = "84mm Smoke Rounds"
att.displayNameShort = "SMK"
att.SpeedDec = 4

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/rpg7hvat")
	att.description = {
	[1] = {t = "Low-velocity smokescreen rounds.", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Direct impact is still lethal.", c = CustomizableWeaponry.textColors.COSMETIC}}
	
end

function att:attachFunc()
	self:unloadWeapon()
end

function att:detachFunc()
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)
