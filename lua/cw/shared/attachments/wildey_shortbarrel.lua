local att = {}
att.name = "wildey_shortbarrel"
att.displayName = "5-inch Barrel"
att.displayNameShort = "5IN"
att.aimPos = {"IronsightPos", "IronsightAng"}

att.isSight = true
att.withoutRail = true

att.statModifiers = {
	RecoilMult = 0.2,
	SpreadPerShotMult = 0.05,
	OverallMouseSensMult = 0.15
	}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/wildey_shortbarrel")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.short)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.medium)	
end

CustomizableWeaponry:registerAttachment(att)