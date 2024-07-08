AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "smgMag"
		
		SWEP.EffectiveRange_Orig = 278 * 39.37
		SWEP.DamageFallOff_Orig = .28

		CustomizableWeaponry:registerAmmo("9x23mm Steyr", "9x23mm Steyr", 8.58, 69.20)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP 34"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/mp34")
	killicon.Add( "ha_mp34", "vgui/killicons/mp34", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.SightWithRail = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = .45
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 1.4, y = -2.25, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 1
	SWEP.ForeGripOffsetCycle_Reload_Empty = 1
	
	SWEP.IronsightPos = Vector(-4.77, -5, 2.9)
	SWEP.IronsightAng = Vector(-0.5, -0.9, 5.5)
	
	SWEP.SprintPos = Vector(4.2, -2.5, -4)
	SWEP.SprintAng = Vector(-8.443, 37.99, -23.216)
	
	SWEP.CustomizePos = Vector(8.843, -2.707, -2.619)
	SWEP.CustomizeAng = Vector(17.587, 41.507, 3.517)
	
	SWEP.AlternativePos = Vector(-1.2, 0.5, -0.2)
	SWEP.AlternativeAng = Vector(0, -.2, -2)
	
	SWEP.SwimPos = Vector(-1.407, -3.619, -4.02)
	SWEP.SwimAng = Vector(-29.549, 14.774, -25.327)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = .85
	SWEP.CustomizationMenuScale = 0.018
	
	SWEP.AttachmentModelsVM = {
	
	["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", pos = Vector(0, -0.35, 24.7), angle = Angle(0, -180, 90), size = Vector(1.1, 1.1, 1.1), bone = "mp34_root"},
	
	}

end

SWEP.MagBGs = {main = 1, regular = 0, ext = 1}

SWEP.MuzzleVelocity = 820

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {

	[1] = {header = "Muzzle", offset = {-100, -600}, atts = {"md_tundra9mm"}},
	--[1] = {header = "Magazine", offset = {550, -350}, atts = {"ha_mp34_extmag"}},
	["+reload"] = {header = "Ammo", offset = {700, -300}, atts = {"am_magnum", "am_matchgrade"}}

}

SWEP.Animations = {
	fire = {"fire_1", "fire_2", "fire_3"},
	fire_aim = "fire_aim",
	fire_last = "fire_last",
	fire_last_aim = "fire_last_aim",
	reload = "reload",
	reload_empty = "reload_empty",
	idle = "idle",
	draw = "draw"
	}
	
	

SWEP.SpeedDec = 45

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto","semi"}
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
SWEP.ViewModel		= "models/weapons/cw2_shark/v_mp34.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_mp34.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false
SWEP.RVBPitchMod = 1.5
SWEP.RVBYawMod = 1.5
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 64
SWEP.Primary.Automatic		= true

SWEP.Primary.Ammo			= "9x23mm Steyr"

SWEP.FireMoveMod = 0
SWEP.FireDelay = 60/600
SWEP.FireSound = "MP34_FIRE"
SWEP.FireSoundSuppressed = "MP5_FIRE_SUPP"
SWEP.Recoil = 0.9
SWEP.FOVPerShot = .45

SWEP.HipSpread = 0.03
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 0.75
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 45
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.2

SWEP.ADSFireAnim = true
SWEP.Chamberable = false
SWEP.BipodInstalled = false

--SWEP.RecoilToSpread = 0.25

SWEP.ReloadSpeed = 1.35
SWEP.ReloadTime = 2.5
SWEP.ReloadHalt = 3.4
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadHalt_Empty = 4.6
SWEP.SnapToIdlePostReload = false

function SWEP:IndividualThink()
	self.EffectiveRange = 278 * 39.37
	self.DamageFallOff = .28
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	anim = "safe"
	prefix = ""
	suffix = ""
	
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