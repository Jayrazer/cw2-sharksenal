AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"
	
	CustomizableWeaponry.shells:addNew("sg_brass_shell", "models/weapons/cw2_shark/shells/sg_brass.mdl", "CW_SHELL_MAIN")
	CustomizableWeaponry.firemodes:registerFiremode("stakeoutslamfire", "SLAM FIRE", false, 0, 1)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Ithaca 37"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/sjogren")
	killicon.Add( "ha_sjogren", "vgui/killicons/sjogren", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SightWithRail = true
	
	SWEP.FireMoveMod = 0
	SWEP.Shell = "sg_brass_shell"
	SWEP.ShellScale = 1.5
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 8, y = 0, z = 2}
	
	SWEP.EffectiveRange_Orig = 75 * 39.37
	SWEP.DamageFallOff_Orig = .48

	SWEP.IronsightPos = Vector(-3.37, -7, 1.2)
	SWEP.IronsightAng = Vector(0.1, 0, 0)
	
	SWEP.SprintPos = Vector(4.44, 0, -1.211)
	SWEP.SprintAng = Vector(-11.256, 28.141, -18.996)
	
	SWEP.CustomizePos = Vector(9.649, -6.814, -2.701)
	SWEP.CustomizeAng = Vector(13.366, 44.321, 0.703)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-40.8947, 40.0455, -12.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.AlternativePos = Vector(0, -2, -0.3)
	SWEP.AlternativeAng = Vector(0, 0, -2)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.ShellBGs = {}
	
	SWEP.LuaVMRecoilAxisMod = {vert = .6, hor = 1, roll = .6, forward = 2, pitch = .5}
	SWEP.OverallMouseSens = .8
	SWEP.CustomizationMenuScale = 0.035
	
end

SWEP.MuzzleVelocity = 340

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = false
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {

["+reload"] = {header = "Ammo", offset = {1000, -150}, atts = {"am_slugrounds", "am_flechetterounds"}}

}

SWEP.AttachmentExclusions = {
}

SWEP.Animations = {
	fire = {"shoot_1", "shoot_2"},
	fire_aim = "shoot_aim",
	reload_start = "reload_start",
	reload_start_empty = "reload_start_empty",
	insert = "reload_insert",
	reload_end = "reload_end",
	idle = "reload_end",
	draw = "draw"
}
	

SWEP.SpeedDec = 25

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"stakeoutslamfire"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Sharksenal"

SWEP.Author			= "speedonerd"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 60
SWEP.AimViewModelFOV = 60
SWEP.ZoomAmount = 5
SWEP.FOVPerShot = 1.1
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_m37.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_sjogren.mdl"


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false

SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip	= 16
SWEP.Primary.Automatic		= true

SWEP.Primary.Ammo			= "12 Gauge"


SWEP.FireDelay = 60/80
SWEP.FireSound = "STAKEOUT_FIRE"
SWEP.Recoil = 5

SWEP.HipSpread = 0.09
SWEP.AimSpread = 0.012
SWEP.VelocitySensitivity = .6
SWEP.MaxSpreadInc = 0.045
SWEP.ClumpSpread = 0.015
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 60/200
SWEP.Shots = 9
SWEP.Damage = 18
SWEP.DeployTime = .7
SWEP.HolsterTime = .3

SWEP.ADSFireAnim = true
SWEP.Chamberable = false
SWEP.ShotgunReload = true
SWEP.PreventQuickScoping = true
SWEP.CrosshairParts = {left = true, right = true, upper = false, lower = true}

SWEP.SnapToIdle = false
SWEP.ReloadSpeed = 1.3
SWEP.ReloadStartTime = 0.65
SWEP.ReloadStartTime_Empty = 2.3
SWEP.ReloadFinishTime = 0.8
SWEP.InsertShellTime = 1
SWEP.ReloadFinishWait = 1.1

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
	anim = "safe"
	prefix = ""
	suffix = ""
	
	--if self.ActiveAttachments.am_minibuck then
	--rate = .9
	--end
	
	--if clip == 1 then
		--self.ReloadFinishWait = .7
		--suffix = suffix .. "_last"
	--end

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

local CT

function SWEP:beginReload()
	mag = self:Clip1()
	
	if self.ShotgunReload then
	
		CT = CurTime()
		
		if mag == 0 then
			local time = CT + self.ReloadStartTime_Empty / self.ReloadSpeed
		
			self.WasEmpty = mag == 0
			self.ReloadDelay = time
			self:SetNextPrimaryFire(time)
			self:SetNextSecondaryFire(time)
			self.GlobalDelay = time
			self.ShotgunReloadState = 1
			self.ForcedReloadStop = false
			
			self:TakePrimaryAmmo(1)
			self:sendWeaponAnim("reload_start_empty", self.ReloadSpeed)
			self:SetClip1(1)
		else
			local time = CT + self.ReloadStartTime / self.ReloadSpeed
		
			self.WasEmpty = mag == 0
			self.ReloadDelay = time
			self:SetNextPrimaryFire(time)
			self:SetNextSecondaryFire(time)
			self.GlobalDelay = time
			self.ShotgunReloadState = 1
			self.ForcedReloadStop = false
		
			self:sendWeaponAnim("reload_start", self.ReloadSpeed)
		end
		
	else	
		local reloadTime = nil
		local reloadHalt = nil
		
		if mag == 0 then
			if self.Chamberable then
				self.Primary.ClipSize = self.Primary.ClipSize_Orig
			end
			
			reloadTime = self.ReloadTime_Empty
			reloadHalt = self.ReloadHalt_Empty
		else
			reloadTime = self.ReloadTime
			reloadHalt = self.ReloadHalt
			
			if self.Chamberable then
				self.Primary.ClipSize = self.Primary.ClipSize_Orig + 1
			end
		end
		
		reloadTime = reloadTime / self.ReloadSpeed
		reloadHalt = reloadHalt / self.ReloadSpeed
		
		self.ReloadDelay = CT + reloadTime
		self:SetNextPrimaryFire(CT + reloadHalt)
		self:SetNextSecondaryFire(CT + reloadHalt)
		self.GlobalDelay = CT + reloadHalt
				
		if self.reloadAnimFunc then
			self:reloadAnimFunc(mag)
		else
			if self.Animations.reload_empty and mag == 0 then
				self:sendWeaponAnim("reload_empty", self.ReloadSpeed)
			else
				self:sendWeaponAnim("reload", self.ReloadSpeed)
			end
		end
	end
	
	CustomizableWeaponry.callbacks.processCategory(self, "beginReload", mag == 0)
	
	self.Owner:SetAnimation(PLAYER_RELOAD)
end