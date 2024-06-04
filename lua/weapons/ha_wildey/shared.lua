AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "pistolMag"
		
		SWEP.EffectiveRange_Orig = 278 * 39.37
		SWEP.DamageFallOff_Orig = .28
		
		CustomizableWeaponry:registerAmmo(".475 Wildey Magnum", ".475 Wildey Magnum", 8.58, 69.20)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Wildey Hunter"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/wildey")
	killicon.Add( "ha_wildey", "vgui/killicons/wildey", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.SightWithRail = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = .8
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 1.4, y = -2.25, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 1
	SWEP.ForeGripOffsetCycle_Reload_Empty = 1
	
	SWEP.IronsightPos = Vector(-2.77, 2, 1.37)
	SWEP.IronsightAng = Vector(-0.07, 0, 5.5)
	
	SWEP.SprintPos = Vector(3.25, -15.9318, -8.5227)
	SWEP.SprintAng = Vector(59.3182, -2.0455, 3)
	
	SWEP.CustomizePos = Vector(8, -7, -1)
	SWEP.CustomizeAng = Vector(18, 28, 20)

	SWEP.AlternativePos = Vector(.5, 0, -.8)
	SWEP.AlternativeAng = Vector(0, 0, -2.222)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1
	SWEP.CustomizationMenuScale = 0.013
	
	SWEP.AttachmentModelsVM = {
	}
	
end

SWEP.GripBGs = {main = 1, wood = 0, rubber = 1}
SWEP.BarrelBGs = {main = 2, medium = 0, short = 1, long = 2}

SWEP.MuzzleVelocity = 450

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {

[2] = {header = "Grips", offset = {900, -250}, atts = {"wildey_rubbergrip"}},
[1] = {header = "Barrel", offset = {-100, -450}, atts = {"wildey_longbarrel", "wildey_shortbarrel"}},
["+reload"] = {header = "Ammo", offset = {-450, 200}, atts = {"am_magnum", "am_matchgrade"}}

}

SWEP.Animations = {

	fire = {"fire_1", "fire_2"},
	fire_aim = "fire_aim",
	fire_last = "fire_last",
	fire_last_aim = "fire_last_aim",
	reload = "reload",
	reload_empty = "reload_empty",
	idle = "idle",
	draw = "draw"
}

SWEP.SpeedDec = 7

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Sharksenal"

SWEP.Author			= "speedonerd"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 65
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_wildey.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_wildey.mdl"


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false
SWEP.RVBPitchMod = 1.5
SWEP.RVBYawMod = 1.5
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 14
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

SWEP.Primary.Ammo			= ".475 Wildey Magnum"

SWEP.FireMoveMod = 0
SWEP.FireDelay = 60/275
SWEP.FireSound = "WILDEY_FIRE"
SWEP.FireSoundSuppressed = "AKM_FIRE_SUPP"
SWEP.Recoil = 1
SWEP.FOVPerShot = 0

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.02
SWEP.VelocitySensitivity = 0.3
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.004
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
SWEP.Damage = 24
SWEP.DeployTime = 0.2
SWEP.HolsterTime = 0.1

SWEP.ADSFireAnim = true
SWEP.ShootWhileProne = true
SWEP.HolsterOnLadder = true
SWEP.SprintingEnabled = true

--SWEP.RecoilToSpread = 0.25

SWEP.ReloadSpeed = 1.1
SWEP.ReloadTime = 1.85
SWEP.ReloadHalt = 2.4
SWEP.ReloadTime_Empty = 1.85
SWEP.ReloadHalt_Empty = 2.65

function SWEP:IndividualThink()
	self.EffectiveRange = 127 * 39.37
	self.DamageFallOff = .30
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self.ActiveAttachments.fp_bigstick then
	rate = 1.5
	else
	rate = 1.1
	end
	
		if clip == 1 then
		suffix = suffix .. "_last"
	end

	if self:isAiming() then
		suffix = suffix .. "_aim"
		cycle = self.ironFireAnimStartCycle
	end
	
	self:sendWeaponAnim(prefix .. "fire" .. suffix, rate, cycle)
end //*/

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