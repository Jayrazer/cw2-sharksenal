AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "smgMag"
		
		SWEP.EffectiveRange_Orig = 278 * 39.37
		SWEP.DamageFallOff_Orig = .28

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP5A2"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/hamp5")
	killicon.Add( "ha_mp5", "vgui/killicons/hamp5", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.SightWithRail = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = .5
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.75
	
	SWEP.IronsightPos = Vector(-3.5, 0, 1)
	SWEP.IronsightAng = Vector(-0.1, -0.42, 0)
	
	SWEP.EoTechPos = Vector(-3.5, -1, -0.15)
	SWEP.EoTechAng = Vector(-0.1, -0.42, 0)
	
	SWEP.AimpointPos = Vector(-3.48, -1, 0.09)
	SWEP.AimpointAng = Vector(-0.05, -0.42, 0)
	
	SWEP.ACOGPos = Vector(-3.45, -6.25, -0.3)
	SWEP.ACOGAng = Vector(-0.1, -0.42, 0)
	
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
	SWEP.CustomizationMenuScale = 0.015
	
	SWEP.AttachmentModelsVM = {
	
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(0.5, 0, 23.2), angle = Angle(0, -180, 90), size = Vector(0.85, 0.85, 0.85), bone = "mp5_root"},
		["md_eotech"] = { type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "mp5_root", rel = "", pos = Vector(0.4, 11.3, -13.65), angle = Angle(90, 0, -90), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "mp5_root", rel = "", pos = Vector(-0.25, 1.2, -4.25), angle = Angle(0, 0, -90), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "mp5_root", rel = "", pos = Vector(-0.4, 1.8, -4.25), angle = Angle(0, 0, -90), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_tundra9mm"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(0, -1, 36), angle = Angle(0, -180, 90), size = Vector(0.75, 0.75, 0.75), bone = "mp5_root"},
	
	}
	
	SWEP.BackupSights = {
	
		["md_acog"] = {Vector(-3.5, -2, -1.75), Vector(0, -0.429, 0)},
	}
	
end

SWEP.MagBGs = {main = 1, regular = 0, ext = 1}
SWEP.StockBGs = {main = 2, regular = 0, fold = 1}
SWEP.SightBGs = {main = 4, off = 0, none = 1}
--SWEP.BottomRailBGs = {main = 3, regular = 0, yeah = 1}

SWEP.MuzzleVelocity = 820

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {

	[4] = {header = "Stock", offset = {1650, -150}, atts = {"ha_mp5_foldstock"}},
	--[4] = {header = "Magazine", offset = {650, 550}, atts = {"ha_akm_extmag"}},
	[3] = {header = "Foregrip", offset = {-150, 300}, atts = {"md_foregrip"}},
	[2] = {header = "Sight", offset = {700, -750}, atts = {"md_aimpoint", "md_eotech", "md_acog"}},
	[1] = {header = "Muzzle", offset = {-100, -600}, atts = {"md_tundra9mm"}},
	["+reload"] = {header = "Ammo", offset = {-550, -100}, atts = {"am_magnum", "am_matchgrade"}}

}

SWEP.ForeGripHoldPos = {
	["ValveBiped.Bip01_L_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(30, -39.112, 0) },
	["ValveBiped.Bip01_L_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -32.223, 0) },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -34.445, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.4, 2.6, 0.185), angle = Angle(-3.333, 12.222, 0) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -30, 0) },
	["ValveBiped.Bip01_L_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -32.223, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-25.112, 16.666, 10) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.444, 65.555, -1.111) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(45.555, 16.666, 5.556) }
}

SWEP.Animations = {
	fire = {"fire_1", "fire_2", "fire_3"},
	fire_aim = "fire_aim",
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

SWEP.ViewModelFOV	= 70
SWEP.AimViewModelFOV = 65
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_mp5.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_mp5.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false
SWEP.RVBPitchMod = 1.5
SWEP.RVBYawMod = 1.5
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true

SWEP.Primary.Ammo			= "9x19mm"

SWEP.FireMoveMod = 0
SWEP.FireDelay = 60/800
SWEP.FireSound = "MP5_FIRE"
SWEP.FireSoundSuppressed = "MP5_FIRE_SUPP"
SWEP.Recoil = 0.8
SWEP.FOVPerShot = .15

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
SWEP.Chamberable = true
SWEP.BipodInstalled = false

--SWEP.RecoilToSpread = 0.25

SWEP.ReloadSpeed = 1.32
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 3.5
SWEP.ReloadTime_Empty = 2.7
SWEP.ReloadHalt_Empty = 4.55
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