AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

		SWEP.magType = "pistolMag"
		
		SWEP.EffectiveRange_Orig = 278 * 39.37
		SWEP.DamageFallOff_Orig = .28

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "CZ 75 SP-01"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/cz75")
	killicon.Add( "ha_cz75", "vgui/killicons/cz75", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.SightWithRail = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = .5
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 1.4, y = -2.25, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 1
	SWEP.ForeGripOffsetCycle_Reload_Empty = 1
	
	SWEP.IronsightPos = Vector(-2.56, 2, 2.06)
	SWEP.IronsightAng = Vector(0.15, -0, 3.5)
	
	SWEP.AutoPos = Vector(-2.56, 2, 2.06)
	SWEP.AutoAng = Vector(0, -0, 3.5)
	
	SWEP.SprintPos = Vector(3.25, -12.9318, -8.5227)
	SWEP.SprintAng = Vector(59.3182, -2.0455, 3)
	
	SWEP.CustomizePos = Vector(8, -4, 0)
	SWEP.CustomizeAng = Vector(18, 28, 20)

	SWEP.AlternativePos = Vector(.5, 0, -.8)
	SWEP.AlternativeAng = Vector(0, 0, -2.222)
	
	SWEP.SwimPos = Vector(0.5, -2.1053, -0.5)
	SWEP.SwimAng = Vector(-50.8947, -3.7895, -46.5263)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = 1
	SWEP.CustomizationMenuScale = 0.013
	
	SWEP.AttachmentModelsVM = {
		["md_tundra9mm"] = {type = "Model", model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "cz75_barrel", pos = Vector(-0.03, -1.45, 6.9), angle = Angle(0, 0, 90), size = Vector(0.8, 0.8, 0.8)},
		["ha_surefire"] = {type = "Model", model = "models/weapons/cw2_shark/attachments/surefirex400.mdl", bone = "cz75_root", pos = Vector(-0.038, -0.5, 5.6), angle = Angle(90, 0, -90), size = Vector(1.2, 1.2, 1.2)},
	}

	SWEP.LaserPosAdjust = Vector(0, -4, -1.7)
	SWEP.LaserAngAdjust = Angle(0, 0, 0) 

end

--SWEP.FrameBGs = {main = 1, semi = 0, auto = 1}

SWEP.MuzzleVelocity = 250

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = false

SWEP.Attachments = {

[1] = {header = "Muzzle", offset = {-750, -250}, atts = {"md_tundra9mm"}},
[2] = {header = "Rail", offset = {300, -450}, atts = {"ha_surefire"}},
["+reload"] = {header = "Ammo", offset = {-450, 300}, atts = {"am_magnum", "am_matchgrade"}}

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

SWEP.ViewModelFOV	= 70
SWEP.AimViewModelFOV = 65
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_cz75sp01.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_cz75sp01.mdl"


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false
SWEP.RVBPitchMod = 1.5
SWEP.RVBYawMod = 1.5
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 19
SWEP.Primary.DefaultClip	= 38
SWEP.Primary.Automatic		= false
SWEP.Chamberable			= true

SWEP.Primary.Ammo			= "9x19mm"

SWEP.FireMoveMod = 0
SWEP.FireDelay = 60/600
SWEP.FireSound = "CZ75_FIRE"
SWEP.FireSoundSuppressed = "CZ75_FIRE_SUPP"
SWEP.Recoil = 1
SWEP.FOVPerShot = 0

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.01
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

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.25
SWEP.ReloadHalt = 1.95
SWEP.ReloadTime_Empty = 1.3
SWEP.ReloadHalt_Empty = 2.3

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