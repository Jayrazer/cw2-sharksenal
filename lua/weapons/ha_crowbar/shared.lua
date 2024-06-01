AddCSLuaFile()

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Crowbar"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/cw2_shark/w_crowbar.mdl"
	SWEP.WMPos = Vector(2, 3, -10)
	SWEP.WMAng = Vector(0, -45, 180)
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/crowbar")
	killicon.Add( "ha_crowbar", "vgui/killicons/crowbar", Color(255, 120, 40, 0))
	
end

SWEP.Animations = {
	slash_primary = {"swing_1", "swing_2"},
	slash_secondary = "stab",
	draw = "draw"
}

SWEP.Sounds = {
	swing_1 = {{time = 0.05, sound = "Weapon_Crowbar.Single"}},
	swing_2 = {{time = 0.05, sound = "Weapon_Crowbar.Single"}},
	stab = {{time = 0.1, sound = "CW_KNIFE_SLASH"}},
	draw = {{time = 0.1, sound = "CW_KNIFE_DRAW"}},
}

SWEP.PlayerHitSounds = {
"physics/flesh/flesh_impact_bullet1.wav",
"physics/flesh/flesh_impact_bullet2.wav",
"physics/flesh/flesh_impact_bullet3.wav",
"physics/flesh/flesh_impact_bullet4.wav",
"physics/flesh/flesh_impact_bullet5.wav",
}
SWEP.MiscHitSounds = {
"physics/concrete/concrete_impact_bullet1.wav",
"physics/concrete/concrete_impact_bullet2.wav",
"physics/concrete/concrete_impact_bullet3.wav",
"physics/concrete/concrete_impact_bullet4.wav",
}

SWEP.DrawSpeed = 1.5
SWEP.isKnife = true
SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.Base = "cw_melee_base"
SWEP.NormalHoldType = "melee"
SWEP.RunHoldType = "melee"
SWEP.Category = "CW 2.0 - Sharksenal"
SWEP.selectSortWeight = 3

SWEP.Author			= "speedonerd"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 68
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/cw2_shark/v_crowbar.mdl"
SWEP.WorldModel = "models/weapons/cw2_shark/w_crowbar.mdl"
SWEP.UseHands = true

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 0
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ""

SWEP.PrimaryAttackDelay = 0.5
SWEP.SecondaryAttackDelay = 0.75

SWEP.PrimaryAttackDamage = {40, 50}
SWEP.SecondaryAttackDamage = {80, 95}

SWEP.PrimaryAttackRange = 50

SWEP.HolsterTime = 0.4
SWEP.DeployTime = 0.6

SWEP.PrimaryAttackImpactTime = 0.1
SWEP.PrimaryAttackDamageWindow = 0.1

SWEP.SecondaryAttackImpactTime = 0.3
SWEP.SecondaryAttackDamageWindow = 0.25

SWEP.PrimaryHitAABB = {
	Vector(-10, -5, -5),
	Vector(10, 5, 5)
}

local simpleTextColor = Color(255, 210, 0, 255)
local mod = 25

function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)
	if self.SelectIcon then
		surface.SetTexture(self.SelectIcon)
		
		wide = wide - mod
		
		x = x + (mod / 2)
		y = y + (mod / 4) + (wide / 8)
		
		surface.SetDrawColor(255, 255, 255, alpha)
		
		surface.DrawTexturedRect(x, y, wide, (wide / 2))
	else
		simpleTextColor.a = alpha
		draw.SimpleText(self.IconLetter, self.SelectFont, x + wide / 2, y + tall * 0.2, simpleTextColor, TEXT_ALIGN_CENTER)
	end
end