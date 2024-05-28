AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "brMag"
		
		SWEP.EffectiveRange_Orig = 278 * 39.37
		SWEP.DamageFallOff_Orig = .28
			
		CustomizableWeaponry.shells:addNew("sfkm308", "models/weapons/khrcw2/shells/308shell.mdl", "CW_SHELL_MAIN")

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
	
	SWEP.IronsightPos = Vector(-2.98, -5, 0.69)
	SWEP.IronsightAng = Vector(0.12, -0.05, 3.5)
	
	SWEP.KobraPos = Vector(-2.92, -5, -0.6)
	SWEP.KobraAng = Vector(1, 0, 4)
	
	SWEP.PSOPos = Vector(-2.83, 0.6, -0.03)
	SWEP.PSOAng = Vector(0, 0, 0)
	
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
	SWEP.CustomizationMenuScale = 0.024
	
	SWEP.AttachmentModelsVM = {
	
	["md_pbs1"] = {model = "models/cw2/attachments/pbs1.mdl", pos = Vector(-0.25, -1.1, 28.7), angle = Angle(0, -180, 90), size = Vector(1.1, 1.1, 1.1), bone = "akm_root"},
	["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", pos = Vector(0.1, -0.2, -5.2), angle = Angle(0, -176, 90), size = Vector(1, 1, 1), bone = "akm_root"},
	["md_kobra"] = {type = "Model", model = "models/cw2/attachments/kobra.mdl", pos = Vector(0.45, 0.9, 1.6), angle = Angle(0, -180, 90), size = Vector(0.9, 0.9, 0.9), bone = "akm_root"},
	
	}

end

SWEP.MuzzleVelocity = 820

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {

	[1] = {header = "Muzzle", offset = {-350, -250}, atts = {"md_pbs1"}},
	[2] = {header = "Sight", offset = {1000, -250}, atts = {"md_kobra", "md_pso1"}},
	["+reload"] = {header = "Ammo", offset = {650, 450}, atts = {"am_magnum", "am_matchgrade"}}

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

SWEP.ViewModelFOV	= 62
SWEP.AimViewModelFOV = 60
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
SWEP.Recoil = 1.75
SWEP.FOVPerShot = .45

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

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 1.8
SWEP.ReloadHalt = 3.3
SWEP.ReloadTime_Empty = 2.1
SWEP.ReloadHalt_Empty = 4.25
SWEP.SnapToIdlePostReload = false

function SWEP:IndividualThink()
	self.EffectiveRange = 278 * 39.37
	self.DamageFallOff = .28
	
	if CustomizableWeaponry_khrcw2_groundcontroldmgenabled then
	self.EffectiveRange = ((self.EffectiveRange + 240 * 39.37))
	end
	
	if self.dt.BipodDeployed then
		self.MaxSpreadInc = 0.01
		self.ForegripOverride = true
		self.ForegripParent = "bipod"
	else
		self.MaxSpreadInc = 0.045
		self.ForegripOverride = true
		self.ForegripParent = "none"
	end
	
	if self.ActiveAttachments.am_fp_matchammo then
	self.EffectiveRange = ((self.EffectiveRange + 27 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .028))
	end
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