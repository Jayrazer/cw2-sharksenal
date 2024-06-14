AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "brMag"
		
		SWEP.EffectiveRange_Orig = 278 * 39.37
		SWEP.DamageFallOff_Orig = .28

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AKM"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/akm")
	killicon.Add( "ha_akm", "vgui/killicons/akm", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.SightWithRail = true
	
	SWEP.ShellScale = .45
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 1.4, y = -2.25, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 1
	SWEP.ForeGripOffsetCycle_Reload_Empty = 1
	
	SWEP.IronsightPos = Vector(-3.27, -5, 0.68)
	SWEP.IronsightAng = Vector(0.16, 0, 0)
	
	SWEP.KrinkPos = Vector(-3.26, -5, 0.88)
	SWEP.KrinkAng = Vector(-0.73, 0, 0)
	
	SWEP.KobraPos = Vector(-3.265, -5, -0.6)
	SWEP.KobraAng = Vector(1, 0, 0)
	
	SWEP.PSOPos = Vector(-2.79, 0.6, 0.35)
	SWEP.PSOAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(4.2, -2.5, -4)
	SWEP.SprintAng = Vector(-8.443, 37.99, -23.216)
	
	SWEP.CustomizePos = Vector(8.843, -4.707, -2.619)
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
	SWEP.CustomizationMenuScale = 0.013
	
	SWEP.AttachmentModelsVM = {
	
	["md_pbs1"] = {model = "models/cw2/attachments/pbs1.mdl", pos = Vector(-0.25, -1.1, 28.7), angle = Angle(0, -180, 90), size = Vector(1.1, 1.1, 1.1), bone = "akm_root"},
	["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", pos = Vector(0.1, -0.1, -4.6), angle = Angle(0, -180, 90), size = Vector(0.95, 0.95, 0.95), bone = "akm_root"},
	["md_kobra"] = {type = "Model", model = "models/cw2/attachments/kobra.mdl", pos = Vector(0.45, 0.9, 1.6), angle = Angle(0, -180, 90), size = Vector(0.9, 0.9, 0.9), bone = "akm_root"},
	
	}
	
	SWEP.AttachmentPosDependency = {
		["md_pbs1"] = {["ha_akm_shortbar"] = Vector(-0.25, -1.1, 20.5)}
			
	}

end

SWEP.MagBGs = {main = 1, regular = 0, ext = 1}
SWEP.DongBGs = {main = 2, regular = 0, dong = 1}
SWEP.BarrelBGs = {main = 3, regular = 0, light = 1, heavy = 2}
SWEP.StockBGs = {main = 4, regular = 0, light = 1, heavy = 2}
--SWEP.RailBGs = {main = 3, regular = 0, rail = 1}

SWEP.MuzzleVelocity = 820

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {

	[1] = {header = "Muzzle", offset = {-750, 50}, atts = {"md_pbs1"}},
	[2] = {header = "Barrel", offset = {-350, -550}, atts = {"ha_akm_shortbar"}},
	[3] = {header = "Sight", offset = {1100, -726}, atts = {"md_kobra", "md_pso1"}},
	[4] = {header = "Magazine", offset = {100, 675}, atts = {"ha_akm_extmag"}},
	[5] = {header = "Foregrip", offset = {350, -750}, atts = {"ha_akm_foregrip"}},
	[6] = {header = "Stock", offset = {1950, -350}, atts = {"ha_akm_foldstock"}},
	["+reload"] = {header = "Ammo", offset = {1000, 675}, atts = {"am_magnum", "am_matchgrade"}}

}

SWEP.ForeGripHoldPos = {
	["ValveBiped.Bip01_L_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -21.112, 0) },
	["ValveBiped.Bip01_L_Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -32.223, 0) },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -34.445, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.201, -0.101, 0.185), angle = Angle(-3.333, 12.222, 0) },
	["ValveBiped.Bip01_L_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -30, 0) },
	["ValveBiped.Bip01_L_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -32.223, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-41.112, 16.666, 50) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.444, 65.555, -1.111) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(25.555, 16.666, 5.556) }
}

SWEP.Animations = {
	fire = {"fire_1", "fire_2"},
	fire_aim = {"fire_aim"},
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

SWEP.ViewModelFOV	= 64
SWEP.AimViewModelFOV = 62
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_akm.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_akm.mdl"


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false
SWEP.RVBPitchMod = 1.5
SWEP.RVBYawMod = 1.5
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true

SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireMoveMod = 0
SWEP.FireDelay = 60/600
SWEP.FireSound = "AKM_FIRE"
SWEP.FireSoundSuppressed = "AKM_FIRE_SUPP"
SWEP.Recoil = 1.5
SWEP.FOVPerShot = .6

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 0.75
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 65
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.2

SWEP.ADSFireAnim = true
SWEP.Chamberable = true
SWEP.BipodInstalled = false

--SWEP.RecoilToSpread = 0.25

SWEP.ReloadSpeed = 1.15
SWEP.ReloadTime = 1.8
SWEP.ReloadHalt = 3.4
SWEP.ReloadTime_Empty = 2.1
SWEP.ReloadHalt_Empty = 4.2
SWEP.SnapToIdlePostReload = false

function SWEP:IndividualThink()
	self.EffectiveRange = 278 * 39.37
	self.DamageFallOff = .28
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1.1
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