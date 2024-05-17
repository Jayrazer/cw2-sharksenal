AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

	--SWEP.magType = "NONE"
	
	CustomizableWeaponry.shells:addNew("sfkm12ga", "models/weapons/khrcw2/shells/12ga_buck.mdl", "CW_SHELL_SHOT")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Sjogren Inertial"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/auto5")
	killicon.Add( "fp_auto5", "vgui/killicons/auto5", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_m3"
	SWEP.PosBasedMuz = false
	SWEP.SightWithRail = true
	
	SWEP.FireMoveMod = 0
	SWEP.Shell = "sfkm12ga"
	SWEP.ShellScale = .625
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = 2.25, z = -2}
	
	SWEP.EffectiveRange_Orig = 75 * 39.37
	SWEP.DamageFallOff_Orig = .48

	SWEP.IronsightPos = Vector(-2.75, -6, 2.079)
	SWEP.IronsightAng = Vector(0.6, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.76, -4, 1.125)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(-2.7715, -4, 1.048)
	SWEP.NXSAng = Vector(0, 0, 0)
	
	SWEP.SlugSightPos = Vector(-2.745, 0, 2.456)
	SWEP.SlugSightAng = Vector(0, 0, -0.704)
	
	SWEP.SprintPos = Vector(4.44, 0, -1.211)
	SWEP.SprintAng = Vector(-11.256, 28.141, -18.996)
	
	SWEP.CustomizePos = Vector(11.649, -2.814, -3.701)
	SWEP.CustomizeAng = Vector(13.366, 44.321, 0.703)
	
	SWEP.SwimPos = Vector(0.5682, -1.7045, 1.0526)
	SWEP.SwimAng = Vector(-40.8947, 40.0455, -12.2273)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.AlternativePos = Vector(-1.301, -3, 0.3)
	SWEP.AlternativeAng = Vector(0, 0, -4)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.LuaVMRecoilAxisMod = {vert = .6, hor = 1, roll = .6, forward = 2, pitch = .5}
	SWEP.OverallMouseSens = .8
	SWEP.CustomizationMenuScale = 0.024
	
	SWEP.AttachmentModelsVM = {["md_rail"] = { type = "Model", model = "models/khrcw2/ins2pack/attachments/rails/rail1.mdl", bone = "body", rel = "", pos = Vector(0.67, -1.04, -1.601), angle = Angle(-90, 0, 180), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_ins2eotech552"] = {model = "models/khrcw2/ins2pack/attachments/ins2eotech552.mdl", pos = Vector(0, -1.9, .5), angle = Angle(90, 90, 180), size = Vector(1.03, 1.03, 1.03), bone = "body"},
	["md_ins2aimpoint"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint.mdl", pos = Vector(0, -1.9, .5), angle = Angle(90, 90, 180), size = Vector(1.03, 1.03, 1.03), bone = "body"},
	["md_ins2aimpoint2x"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint2x.mdl", pos = Vector(0, -1.9, .5), angle = Angle(90, 90, 180), size = Vector(1.03, 1.03, 1.03), bone = "body"},
	["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", pos = Vector(-.311, 4.475, -6.753), angle = Angle(0, 0, -90), size = Vector(1.144, 1.144, 1.144), bone = "body"},
	["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", pos = Vector(4.16, -.68, -5), angle = Angle(90, 180, 180), size = Vector(1, 1, 1), bone = "body"},
	["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(-16.7, -.08, -2.4), angle = Angle(0, 90, 0), size = Vector(.8, .8, .8), bone = "muzzle"},
	["md_ins2elcan"] = {model = "models/khrcw2/ins2pack/attachments/ins2elcan.mdl", pos = Vector(0, -1.9, .5), angle = Angle(90, 90, 180), size = Vector(.98, .98, .98), bone = "body"},
	["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "body", rel = "", pos = Vector( .3, .768, 12.125), angle = Angle(180, 180, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}},
	["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "body", pos = Vector(-.2, -1.8, 8.764), angle = Angle(270, 90, 0), size = Vector(0.8, 0.8, 0.8)},
	["md_ins2wsacog"] = {model = "models/khrcw2/ins2pack/attachments/ins2wsacog.mdl", pos = Vector(0, -1.9, .5), angle = Angle(90, 90, 180), size = Vector(.9, .9, .9), bone = "body"},
	["md_nightforce_nxs"] = { type = "Model", model = "models/cw2/attachments/l96_scope.mdl", bone = "body", rel = "", pos = Vector(-2.81, -0.921, 1), angle = Angle(90, 0, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}}}
	
	SWEP.AP2XAxisAlign = {right = .2, up = -.75, forward = 0}
	SWEP.PO42PAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.INS2AxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0, up = 0, forward = 120.25}
	
end

SWEP.MuzzleVelocity = 340

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = false
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.ShellBGs = {main = 2, mag = 0, mini = 1, slug = 2}
SWEP.BarrelBGs = {main = 1, auto5 = 0, auto8 = 1, autocompact = 2}

SWEP.Attachments = {[1] = {header = "Optic", offset = {950, -300}, atts = {"md_schmidt_shortdot", "md_nightforce_nxs"}},
[2] = {header = "Model", offset = {-150, -500}, atts = {"fp_auto8", "fp_autocompact"}, exclusions = {am_minibuck = true,}},
["+reload"] = {header = "Ammo", offset = {-150, 275}, atts = {"am_minibuck", "am_2buck", "am_rifledslug", "am_hpslug"}}}

SWEP.AttachmentExclusions = {
	["am_minibuck"] = {"fp_auto8", "fp_autocompact"},
}

SWEP.Animations = {fire = "fireiron",
	fire_aim = "fireiron",
	fire_last = "fireironlast",
	fire_last_aim = "fireironlast",
	reload_start = "reloadstart",
	insert = "reloadinsert",
	reload_end = "reloademptyinsert",
	idle = "reloadend",
	draw = "draw"}
	

SWEP.SpeedDec = 25

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Historic Arsenal"

SWEP.Author			= "speedonerd"
SWEP.Contact		= "https://steamcommunity.com/id/khrissyk/"
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = false

SWEP.ViewModelFOV	= 75
SWEP.AimViewModelFOV = 60
SWEP.ZoomAmount = 5
SWEP.FOVPerShot = .5
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/khrcw2/auto5.mdl"
SWEP.WorldModel		= "models/weapons/khrcw2/w_auto5.mdl"


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false

SWEP.Primary.ClipSize = 4
SWEP.Primary.DefaultClip	= 4
SWEP.Primary.Automatic		= false

SWEP.Primary.Ammo			= "12 Gauge"


SWEP.FireDelay = 60/250
SWEP.FireSound = "FPAUTO5_FIRE"
SWEP.Recoil = 3

SWEP.HipSpread = 0.09
SWEP.AimSpread = 0.012
SWEP.VelocitySensitivity = .6
SWEP.MaxSpreadInc = 0.045
SWEP.ClumpSpread = 0.013
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 60/200
SWEP.Shots = 9
if CustomizableWeaponry_khrcw2_groundcontroldmgenabled then
SWEP.Damage = 13
else
SWEP.Damage = 20
end
SWEP.DeployTime = .7
SWEP.HolsterTime = .3

SWEP.ADSFireAnim = true
SWEP.Chamberable = true
SWEP.ShotgunReload = true
SWEP.PreventQuickScoping = true
SWEP.CrosshairParts = {left = true, right = true, upper = false, lower = true}

SWEP.SnapToIdle = false
SWEP.ReloadSpeed = 1.2
SWEP.ReloadStartTime = 0.75
SWEP.InsertShellTime = .75
SWEP.ReloadFinishWait = 1.2

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
	anim = "safe"
	prefix = ""
	suffix = ""
	
	if self.ActiveAttachments.am_minibuck then
	rate = .9
	end
	
	if self.ActiveAttachments.am_rifledslug or self.ActiveAttachments.am_hpslug then
	rate = 1.1
	end
	
	if clip == 1 then
		self.ReloadFinishWait = .7
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

function SWEP:IndividualThink()	

	self.EffectiveRange = 75 * 39.37
	self.DamageFallOff = .48
	
	if self.ActiveAttachments.am_2buck then
	self.ClumpSpread = ((self.ClumpSpread_Orig + 0.001))
	end
	
	if self.ActiveAttachments.am_minibuck then
	self.ClumpSpread = ((self.ClumpSpread_Orig + 0.001))
	end
	
	if self.ActiveAttachments.fp_auto8 then
	self.ClumpSpread = ((self.ClumpSpread_Orig - 0.0015))
	end
	
	if self.ActiveAttachments.fp_autocompact then
	self.ClumpSpread = ((self.ClumpSpread_Orig + 0.008))
	end
	
	if self.ActiveAttachments.am_rifledslug then
	self.EffectiveRange = ((self.EffectiveRange + 32.35 * 39.37))
	self.DamageFallOff = ((self.DamageFallOff - .10))
	end
	if self.ActiveAttachments.am_minibuck or self.ActiveAttachments.am_hpslug then
	self.DamageFallOff = ((self.DamageFallOff + .34))
	end
	
	if self.ActiveAttachments.am_rifledslug or self.ActiveAttachments.am_hpslug then
	self.ClumpSpread = nil
	end

end