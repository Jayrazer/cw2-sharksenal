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
	SWEP.PrintName = "Swiss K31"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/mrad")
	killicon.Add( "fp_mrad", "vgui/killicons/mrad", Color(255, 120, 40, 0))
	
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
	
	--SWEP.IronsightPos = Vector(-2.721, -6, 1.08)
	--SWEP.IronsightAng = Vector(-0.151, -0.051, 2)
	
	SWEP.IronsightPos = Vector(-3.75, -8, 1.65)
	SWEP.IronsightAng = Vector(0.4, 0, 0)
	
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
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1
	SWEP.CustomizationMenuScale = 0.026
	
	SWEP.AttachmentModelsVM = {
	
	["md_ins2eotech552"] = { type = "Model", model = "models/khrcw2/ins2pack/attachments/ins2eotech552.mdl", bone = "body", rel = "", pos = Vector(0, -10.351, -4.25), angle = Angle(180, -90, 0), size = Vector(1.149, 1.149, 1.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	
	}
	
	SWEP.LaserPosAdjust = Vector(-1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.AP2XAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.INS2AxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 2, roll = 4, forward = 2, pitch = .25}
	
	SWEP.ForeGripHoldPos = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.556, 3, -0.556), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-30, 21.111, 32.222) }
}
end

SWEP.SightBGs = {main = 1, mbus = 0, none = 1}
SWEP.BipodBGs = {main = 2, up = 0, down = 1}

SWEP.MuzzleVelocity = 850

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true


SWEP.Attachments = {
	--[3] = {header = "Sight", offset = {950, -400}, atts = {"ha_k31scope"}},
	["+reload"] = {header = "Ammo", offset = {650, 300}, atts = {"am_fp_matchammo", "am_tungstenammo"}}
}

SWEP.Animations = {
	fire = {"fire_1"},
	fire_aim = "fire_2",
	reload = "reload",
	reload_empty = "reload_empty",
	idle = "idle",
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
SWEP.Recoil = 3
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
SWEP.BipodInstalled = true


SWEP.Primary.Ammo			= "7.5x55mm Swiss"

SWEP.ReloadSpeed = 1.1
SWEP.ReloadTime = 2.7
SWEP.ReloadHalt = 2.7
SWEP.ReloadTime_Empty = 3.6
SWEP.ReloadHalt_Empty = 3.6

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
	
	if CustomizableWeaponry_khrcw2_groundcontroldmgenabled then
	self.EffectiveRange = ((self.EffectiveRange + 200 * 39.37))
	end
	
	if self.ActiveAttachments.am_fp_matchammo then
	self.EffectiveRange = ((self.EffectiveRange + 34.1 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .021))
	end
	
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