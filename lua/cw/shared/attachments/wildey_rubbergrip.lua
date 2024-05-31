local att = {}
att.name = "wildey_rubbergrip"
att.displayName = "Ergonomic Rubber Grips"
att.displayNameShort = "ERGO"
att.aimPos = {"IronsightPos", "IronsightAng"}

att.isSight = true
att.withoutRail = true

att.statModifiers = {
	RecoilMult = -0.075,
	OverallMouseSensMult = -0.1
	}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/wildey_rubbergrip")
	att.description = {}
end

function att:attachFunc()
	self:setBodygroup(self.GripBGs.main, self.GripBGs.rubber)
end

function att:detachFunc()
	self:setBodygroup(self.GripBGs.main, self.GripBGs.wood)	
end

CustomizableWeaponry:registerAttachment(att)