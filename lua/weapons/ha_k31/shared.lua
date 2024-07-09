AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	util.PrecacheModel("models/weapons/cw2_shark/v_k31.mdl")
	util.PrecacheModel("models/weapons/cw2_shark/w_k31.mdl")
	
	SWEP.EffectiveRange_Orig = 341.2 * 39.37
	SWEP.DamageFallOff_Orig = .21
	
	CustomizableWeaponry:registerAmmo("7.5x55mm Swiss", "7.5x55mm Swiss", 8.58, 69.20)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "K31"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/k31")
	killicon.Add( "ha_k31", "vgui/killicons/k31", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_sr25"
	SWEP.PosBasedMuz = false
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 1
	SWEP.ForeGripOffsetCycle_Reload_Empty = 1
	
	SWEP.ShellScale = .75
	SWEP.ShellDelay = .75
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = 0, z = 0}
	
	SWEP.IronsightPos = Vector(-3.75, -8, 1.65)
	SWEP.IronsightAng = Vector(0.4, -0.01, 0)
	
	SWEP.SprintPos = Vector(4.44, 0, -1.211)
	SWEP.SprintAng = Vector(-11.256, 28.141, -18.996)
	
	SWEP.CustomizePos = Vector(9.5, -6, 1.5)
	SWEP.CustomizeAng = Vector(12, 45, 16)

	SWEP.AlternativePos = Vector(-1.25, -3, -.25)
	SWEP.AlternativeAng = Vector(0, .25, -4)

	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-55.8947, 55.0455, -16.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.ScopePos = Vector(-3.75, -6, 0.45)
	SWEP.ScopeAng = Vector(0.4, 0, 0)
	
	SWEP.LeupoldPos = Vector(-3.78, -5, -0.13)
	SWEP.LeupoldAng = Vector(0.4, 0, 0)
	
	SWEP.ACOGPos = Vector(-3.8, -10, -0.43)
	SWEP.ACOGAng = Vector(0.4, 0, 0)
	
	SWEP.AimpointPos = Vector(-3.77, -5, -0.525)
	SWEP.AimpointAng = Vector(0.4, 0, 0)
	
	SWEP.EoTechPos = Vector(-3.77, -7, -0.61)
	SWEP.EoTechAng = Vector(0.4, 0, 0)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1
	SWEP.CustomizationMenuScale = 0.026
	
	SWEP.AttachmentModelsVM = {
	
	["k31_scope"] = { type = "Model", model = "models/weapons/cw2_shark/attachments/k31_scope.mdl", bone = "k31_root", rel = "", pos = Vector(0, -4.15, 6.3), angle = Angle(90, -90, 0), size = Vector(1.149, 1.149, 1.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["ha_leupold"] = { type = "Model", model = "models/weapons/cw2_shark/attachments/inssm3a.mdl", bone = "k31_root", rel = "", pos = Vector(0, -3.6, 5), angle = Angle(90, -90, 0), size = Vector(0.95, 0.95, 0.95), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["ha_acogta31"] = { type = "Model", model = "models/weapons/cw2_shark/attachments/inssta31.mdl", bone = "k31_root", rel = "", pos = Vector(0, 7.85, 7.2), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_aimpoint"] = { type = "Model", model = "models/weapons/cw2_shark/attachments/insscompm4.mdl", bone = "k31_root", rel = "", pos = Vector(0, 7.85, 7.2), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_eotech"] = { type = "Model", model = "models/weapons/cw2_shark/attachments/insseotech.mdl", bone = "k31_root", rel = "", pos = Vector(0, 7.85, 7), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	
	}
	
	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.AP2XAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.INS2AxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 2, roll = 4, forward = 2, pitch = .25}
	
end

SWEP.SightBGs = {main = 1, off = 0, none = 1}

SWEP.MuzzleVelocity = 850

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true


SWEP.Attachments = {
	[1] = {header = "Optic", offset = {1100, -450}, atts = {"md_aimpoint", "md_eotech", "ha_acogta31", "k31_scope", "ha_leupold"}},
	--["+attack"] = {header = "Reload", offset = {-150, 150}, atts = {"k31_sgload"}},
	["+reload"] = {header = "Ammo", offset = {150, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
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
	

SWEP.SpeedDec = 25

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Sharksenal"

SWEP.Author			= "speedonerd"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 60
SWEP.ZoomAmount = 10
SWEP.FOVPerShot = 0
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_k31.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_k31.mdl"

SWEP.FireMoveMod = 0


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false

SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 12
SWEP.Primary.Automatic		= false


SWEP.FireDelay = 60/45
SWEP.FireSound = "K31_FIRE"
SWEP.Recoil = 2
 -- = .5

SWEP.HipSpread = 0.055
SWEP.AimSpread = 0.001
SWEP.GlobalDelayOnShoot = 60/70
SWEP.VelocitySensitivity = .75
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 1.525
SWEP.Shots = 1
SWEP.Damage = 105
SWEP.DeployTime = .7
SWEP.HolsterTime = .4
SWEP.BipodRecoilModifier = 0.01

SWEP.ADSFireAnim = true
SWEP.Chamberable = true
SWEP.ShotgunReload = false
SWEP.PreventQuickScoping = false
SWEP.BipodInstalled = false


SWEP.Primary.Ammo			= "7.5x55mm Swiss"

SWEP.ReloadSpeed = 1.1
SWEP.ReloadStartTime = 0.9
SWEP.ReloadFinishTime = 1.1
SWEP.InsertShellTime = 0.9
SWEP.ReloadFinishWait = 1.1
SWEP.ReloadTime = 2
SWEP.ReloadHalt = 2.8
SWEP.ReloadTime_Empty = 2
SWEP.ReloadHalt_Empty = 3.9

SWEP.AimBreathingEnabled = false
SWEP.AimBreathingIntensity = 1
SWEP.BreathRegenRate = 0.2
SWEP.BreathDrainRate = 0.1
SWEP.BreathIntensityDrainRate = 1
SWEP.BreathIntensityRegenRate = 2
SWEP.BreathHoldVelocityMinimum = 30
SWEP.BreathDelay = 0.8
SWEP.BreathRegenDelay = 0.5
SWEP.MinimumBreathPercentage = 0.5


function SWEP:IndividualThink()
	self.EffectiveRange = 341.2 * 39.37
	self.DamageFallOff = .21
end


function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.2
	anim = "safe"
	prefix = ""
	suffix = ""

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