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
	
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/sg510")
	killicon.Add( "fp_sg510", "vgui/killicons/sg510", Color(255, 120, 40, 0))
	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.SightWithRail = true
	
	SWEP.Shell = "sfkm308"
	SWEP.ShellScale = .45
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 1.4, y = -2.25, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 1
	SWEP.ForeGripOffsetCycle_Reload_Empty = 1
	
	SWEP.IronsightPos = Vector(-3.06, -5, 1.1)
	SWEP.IronsightAng = Vector(-0.3, -0.05, 3.5)
	
	SWEP.AARAUPos = Vector(-2.986, -2, 0.082)
	SWEP.AARAUAng = Vector(0, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.985, -4, -.15)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.MK3Pos = Vector(-2.985, -4, -.15)
	SWEP.MK3Ang = Vector(0, 0, 0)
	
	SWEP.PRISMPos = Vector(-2.985, -4, -.15)
	SWEP.PRISMAng = Vector(0, 0, 0)
	
	SWEP.HAMRPos = Vector(-2.985, -4, -.15)
	SWEP.HAMRAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.985, -4, -.065)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.Aimpoint2xPos = Vector(-2.985, -2, -.095)
	SWEP.Aimpoint2xAng = Vector(0, 0, 0)
	
	SWEP.ElcanPos = Vector(-2.985, -2, -.15)
	SWEP.ElcanAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.985, -2, -.15)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.AimPointPos = Vector(-2.985, -2, -.15)
	SWEP.AimPointAng = Vector(0, 0, 0)
	
	SWEP.NXSPos = Vector(-2.985, -2, -.15)
	SWEP.NXSAng = Vector(-.88, .8, 0)
	
	SWEP.ACOGPos = Vector(-2.985, -2, -.15)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(4.67, 0.201, -5.1)
	SWEP.SprintAng = Vector(-8.443, 37.99, -23.216)
	
	SWEP.CustomizePos = Vector(8.843, -1.407, -3.619)
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
	
		SWEP.ForegripOverridePos = {
		["bipod"] = {
			weakOverride = true,
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 0, 20) },
			["bipodl"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.444, -34.445, 72.222) },
			["bipodr"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-14.445, 34.444, 72.222) }
		},
		["none"] = {
			weakOverride = true,
			["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
			["bipodl"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
			["bipodr"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
		}
	}
	
	SWEP.AttachmentModelsVM = {
	["mgmp_pe57_hvystock"] = {model = "models/mgmp/pe57/woodstock.mdl", pos = Vector(0, 13.48, 3.38), angle = Angle(0, 90, 180), size = Vector(1, 1, 1), bone = "mount"},
	["mgmp_sigscope"] = {model = "models/mgmp/pe57/scope.mdl", pos = Vector(0, 13.48, 3.38), angle = Angle(0, 90, 180), size = Vector(1, 1, 1), bone = "mount"},
	["mgmp_pe57_hvygrip"] = {model = "models/mgmp/pe57/woodpgrip.mdl", pos = Vector(0, 13.48, 3.38), angle = Angle(0, 90, 180), size = Vector(1, 1, 1), bone = "mount"},
	["md_rail"] = {model = "models/mgmp/pe57/lowrail.mdl", pos = Vector(0, 13.82, 3.4), angle = Angle(0, 90, 180), size = Vector(1, 1, 1), bone = "mount"},
	["md_saker"] = {model = "models/weapons/khrcw2/att/sr25saker.mdl", pos = Vector(-15, 0, -2.4), angle = Angle(0, 90, 0), size = Vector(.8, .8, .8), bone = "muzzle"},
	["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-.525, 11, 3.6), angle = Angle(0, 0, 180), size = Vector(.8, .8, .8), bone = "grip"},
	["md_ins2eotech552"] = {model = "models/khrcw2/ins2pack/attachments/ins2eotech552.mdl", pos = Vector(0.02, 0, -0.325), angle = Angle(180, -90, 0), size = Vector(1, 1, 1), bone = "mount"},
	["md_ins2aimpoint"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint.mdl", pos = Vector(0.02, 0, -0.3425), angle = Angle(180, -90, 0), size = Vector(.925, .925, .925), bone = "mount"},
	["md_ins2aimpoint2x"] = {model = "models/khrcw2/ins2pack/attachments/ins2aimpoint2x.mdl", pos = Vector(0.02, 0, -0.3725), angle = Angle(180, -90, 0), size = Vector(.925, .925, .925), bone = "mount"},
	["md_ins2elcan"] = {model = "models/khrcw2/ins2pack/attachments/ins2elcan.mdl", pos = Vector(0.02, 0, -0.325), angle = Angle(180, -90, 0), size = Vector(1, 1, 1), bone = "mount"},
	["md_ins2wsacog"] = {model = "models/khrcw2/ins2pack/attachments/ins2wsacog.mdl", pos = Vector(0.02, 0, -0.325), angle = Angle(180, -90, 0), size = Vector(1, 1, 1), bone = "mount"},
	["md_prizm3x"] = {model = "models/weapons/khrcw2/att/prism3x_scope.mdl", pos = Vector(-21.275, -2, -1.04), angle = Angle(0, 0, 90), size = Vector(.925, .925, .925), bone = "mount"},
	["md_sr25hamr"] = {model = "models/weapons/khrcw2/att/hamr_scope.mdl", pos = Vector(-22.7, -2.52, 3.420), angle = Angle(0, 0, 180), size = Vector(1, 1, 1), bone = "mount"},
	}
	
	SWEP.AttachmentPosDependency = {
		["md_saker"] = {
			["mgmp_pe57_carbinebarrel"] = Vector(-20, 0, -2.4),
			["mgmp_pe57_shortbarrel"] = Vector(-28, 0, -2.44),
		},
		--["md_saker"] = {
		--	["mgmp_pe57_shortbarrel"] = Vector(-29.5, -0.02, -3.025),
		--},
	}
	
	SWEP.AttachmentDependencies = {
	["mgmp_pe57_hvyhgrip"] = {"mgmp_pe57_carbinebarrel"}
	}
	
	
	SWEP.RTAlign = {right = .17, up = 0, forward = 0}
	SWEP.AP2XAxisAlign = {right = .2, up = -.75, forward = 0}
	SWEP.PO42PAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.INS2AxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.NXSAlign = {right = 0, up = 0, forward = 120.25}
	SWEP.LuaVMRecoilAxisMod = {vert = .3, hor = 0, roll = .35, forward = .8, pitch = -.15}
end

SWEP.StockBGs = {main = 1, on = 0, off = 1}
SWEP.PGripBGs = {main = 2, on = 0, off = 1}
SWEP.GripBGs = {main = 3, pe57 = 0, five10 = 1, amt = 2, off = 3}
SWEP.BarrelBGs = {main = 4, long = 0, med = 1, short = 2}
SWEP.MagBGs = {main = 5, sg510 = 0, akm = 1}
SWEP.BipodBGs = {main = 6, on = 0, off = 1}

SWEP.MuzzleVelocity = 820

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true


SWEP.Attachments = {
--[3] = {header = "Optic", offset = {1150, -350}, atts = {"md_ins2eotech552", "md_ins2aimpoint", "md_ins2aimpoint2x","mgmp_sigscope"}}, --"md_ins2eotech552","md_ins2aimpoint","md_ins2aimpoint2x","md_ins2elcan","md_ins2po424p","md_ins2wsacog", "md_ins2m40tac"
--[4] = {header = "Mod.", offset = {-300, 350}, atts = {"fp_sg510finn"}},
--[1] = {header = "Muzzle", offset = {-350, -250}, atts = {"md_saker"}},
--["+attack2"] = {header = "Stock", offset = {1700, 300}, atts = {"mgmp_pe57_hvystock","mgmp_pe57_nostock"}},
--[2] = {header = "Barrel", offset = {300, -400}, atts = {"mgmp_pe57_carbinebarrel","mgmp_pe57_shortbarrel"}},
--[5] = {header = "Grip", offset = {1100, 650}, atts = {"mgmp_pe57_hvygrip"}},
--["+use"] = {header = "Perk", offset = {550, 150}, atts = {"mgmp_perk_quickreload"}},
--["+reload"] = {header = "Ammo", offset = {750, 250}, atts = {"am_fp_matchammo", "am_tungstenammo", "am_fp_lowvelammo", "am_pluspammo"}}
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
SWEP.WorldModel		= "models/weapons/khrcw2/w_pe57.mdl"




SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false
SWEP.RVBPitchMod = 1
SWEP.RVBYawMod = 1
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true

SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireMoveMod = 0
SWEP.FireDelay = 60/600
SWEP.FireSound = "MGMPSTGW57_FIRENEW"
SWEP.FireSoundSuppressed = "MGMPSTGW57_FIRE2"
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

SWEP.ReloadSpeed = 1.3
SWEP.ReloadTime = 2.26
SWEP.ReloadHalt = 3.1
SWEP.ReloadTime_Empty = 2.5
SWEP.ReloadHalt_Empty = 3.8
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