AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	SWEP.magType = "pistolMag"
		
	SWEP.EffectiveRange_Orig = 127 * 39.37
	SWEP.DamageFallOff_Orig = .30

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "CZ 75"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/cz75")
	killicon.Add( "ha_cz75", "vgui/killicons/cz75", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = false
	SWEP.SightWithRail = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = .7
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = .85
	SWEP.ForeGripOffsetCycle_Reload_Empty = .8

	SWEP.IronsightPos = Vector(-2.57, 2, 1.71)
	SWEP.IronsightAng = Vector(0, -0.05, 3.5)
	
	SWEP.AutoPos = Vector(-2.56, 2, 1.71)
	SWEP.AutoAng = Vector(0, -0.06, 3.5)
	
	SWEP.SprintPos = Vector(3.25, -12.9318, -8.5227)
	SWEP.SprintAng = Vector(59.3182, -2.0455, 3)
	
	SWEP.CustomizePos = Vector(8, -4, -1)
	SWEP.CustomizeAng = Vector(18, 28, 20)

	SWEP.AlternativePos = Vector(.5, 0, -.8)
	SWEP.AlternativeAng = Vector(0, 0, -2.222)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.LuaVMRecoilAxisMod = {vert = .45, hor = 0, roll = 0, forward = .15, pitch = -.25}
	SWEP.CustomizationMenuScale = 0.013
	
	SWEP.AttachmentModelsVM = {
	["md_insight_x2"] = { type = "Model", model = "models/cw2/attachments/pistollaser.mdl", bone = "body", rel = "", pos = Vector(0, -2, -0.9), angle = Angle(180, 90, 0), size = Vector(0.135, 0.135, 0.135), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_cobram2"] = { type = "Model", model = "models/cw2/attachments/cobra_m2.mdl", bone = "barrel", rel = "", pos = Vector(-7.79, -0.784, -0.731), angle = Angle(0, 0, 0), size = Vector(1.05, 1.05, 1.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.AttachmentPosDependency = {
		["md_cobram2"] = {
			["fp_bigstick"] = Vector(-9.25, -0.784, -0.711),
		},
	}
end

SWEP.FrameBGs = {main = 1, semi = 0, auto = 1}

SWEP.MuzzleVelocity = 250

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false

SWEP.FOVPerShot = 0

SWEP.Attachments = {
--[1] = {header = "Muzzle", offset = {-700, -250}, atts = {"md_cobram2"}},
--[4] = {header = "Finish", offset = {0, 400}, atts = {"fp_altfinish"}},
--[3] = {header = "Style", offset = {700, 150}, atts = {"fp_onehand"}},
[2] = {header = "Receiver", offset = {100, -500}, atts = {"cz75_auto"}},
["+reload"] = {header = "Ammo", offset = {-650, 300}, atts = {"am_magnum", "am_matchgrade"}}
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
	
SWEP.ReloadViewBobEnabled = true
	
SWEP.SpeedDec = 5

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

SWEP.ViewModelFOV	= 72
SWEP.AimViewModelFOV = 65
SWEP.ZoomAmount = 10
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_cz75.mdl"
SWEP.WorldModel		= "models/weapons/khrcw2/w_series70.mdl"



SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false

SWEP.Primary.ClipSize		= 16
SWEP.Primary.DefaultClip	= 16
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

SWEP.Primary.Ammo			= "9x19mm"

SWEP.FireDelay = 60/500
SWEP.FireSound = "CZ75_FIRE"
SWEP.FireSoundSuppressed = "FPSERIES70_FIRESUP"
SWEP.Recoil = 1

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 0.3
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.004
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
if CustomizableWeaponry_khrcw2_groundcontroldmgenabled then
SWEP.Damage = 25
else
SWEP.Damage = 50
end
SWEP.DeployTime = .1
SWEP.HolsterTime = .1

SWEP.ADSFireAnim = true
SWEP.ShootWhileProne = true
SWEP.HolsterOnLadder = true
SWEP.SprintingEnabled = true

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.5
SWEP.ReloadHalt = 1.8
SWEP.ReloadTime_Empty = 1.9
SWEP.ReloadHalt_Empty = 3

function SWEP:IndividualThink()
	self.EffectiveRange = 127 * 39.37
	self.DamageFallOff = .30
	
	if CustomizableWeaponry_khrcw2_groundcontroldmgenabled then
	self.EffectiveRange = ((self.EffectiveRange + 50 * 39.37))
	end
	
	if self.ActiveAttachments.fp_22tcm then 
	self.EffectiveRange = ((self.EffectiveRange + 19 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff + .1))
	end
	
	if self.ActiveAttachments.am_fp_matchammo then 
	self.EffectiveRange = ((self.EffectiveRange + 25 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .045))
	end
	
	if self.ActiveAttachments.cz75_auto then
	self.FireDelay = 60/1000
	end
	
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