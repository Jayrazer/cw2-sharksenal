local att = {}
att.name = "ha_cgm3_uhv"
att.displayName = "84mm High Velocity Rounds"
att.displayNameShort = "UHV"
att.SpeedDec = 4

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/rpg7hvat")
	att.description = {
	[1] = {t = "High velocity rounds with fast travel time.", c = CustomizableWeaponry.textColors.COSMETIC},
	[2] = {t = "Lower blast damage.", c = CustomizableWeaponry.textColors.NEGATIVE},
	[3] = {t = "Lower blast radius.", c = CustomizableWeaponry.textColors.NEGATIVE}}
	
end

function att:attachFunc()
	self:unloadWeapon()
end

function att:detachFunc()
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)
