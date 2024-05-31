local att = {}
att.name = "wildey_longbarrel"
att.displayName = "14-inch Barrel"
att.displayNameShort = "14IN"
att.aimPos = {"IronsightPos", "IronsightAng"}

att.statModifiers = {
	RecoilMult = -0.1,
	SpreadPerShotMult = -0.1,
	OverallMouseSensMult = -0.15
	}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/wildey_longbarrel")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.long)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.medium)	
end

CustomizableWeaponry:registerAttachment(att)