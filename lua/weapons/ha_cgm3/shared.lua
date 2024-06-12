AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")
		
		CustomizableWeaponry.firemodes:registerFiremode("cgmsingle", "SINGLE-SHOT", false, 0, 1)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Carl Gustav M3"
	SWEP.CSMuzzleFlashes = true
	SWEP.UseHands = true
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/cgm3")
	SWEP.CrosshairParts = {left = true, right = true, upper = false, lower = true}

	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.SightWithRail = true
	
	SWEP.Shell = ""
	SWEP.ShellScale = .5
	SWEP.ShellDelay = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.8
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.75
	
	SWEP.IronsightPos = Vector(-3.4, -6, 0.2)
	SWEP.IronsightAng = Vector(4, 0, 0)
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-15.478, 20.96, -15)
	
	SWEP.CustomizePos = Vector(5.75, 1.627, -1.821)
	SWEP.CustomizeAng = Vector(20.009, 30.971, 16.669)
	
	SWEP.AlternativePos = Vector(-1.2, 0.5, -0.2)
	SWEP.AlternativeAng = Vector(0, -.2, -2)
	
	SWEP.SwimPos = Vector(-2.3158, -1, -6)
	SWEP.SwimAng = Vector(-45.5789, 0, 11.3684)
	
	SWEP.PronePos = Vector(0, 0, -3.1579)
	SWEP.ProneAng = Vector(-2, 22.7368, -28.9474)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 1
	SWEP.DisableSprintViewSimulation = false
	
	SWEP.OverallMouseSens = .85
	SWEP.CustomizationMenuScale = 0.019
	
	SWEP.AttachmentModelsVM = {

	}
	
	SWEP.zoomLevels = {
		20, 15, 10
	}
	
	SWEP.simpleTelescopicsFOVRange = {
		6.7,
		3.2,
		1
	}

end

SWEP.MuzzleVelocity = 820

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.FullAimViewmodelRecoil = false
SWEP.CanRestOnObjects = true

SWEP.Attachments = {

	["+reload"] = {header = "Projectile", offset = {-300, 400}, atts = {"ha_cgm3_heat", "ha_cgm3_uhv", "ha_cgm3_smoke"}}
	
	}

SWEP.Animations = {
	fire = {"fire"},
	fire_aim = {"fire"},
	reload = "reload",
	idle = "idle",
	draw = "draw",
	holster = "holster"
}
	
	

SWEP.SpeedDec = 60

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.NormalHoldType = "rpg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"cgmsingle"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Sharksenal"

SWEP.Author			= "speedonerd"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""
SWEP.NearWallEnabled = true

SWEP.ViewModelFOV	= 65
SWEP.AimViewModelFOV = 65
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/cw2_shark/v_cgm3.mdl"
SWEP.WorldModel		= "models/weapons/cw2_shark/w_cgm3.mdl"

SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/weapons/cw2_shark/w_cgm3.mdl"
SWEP.WMPos = Vector(-1, 0, 1.2)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.ReloadViewBobEnabled = false
SWEP.RVBPitchMod = 1.5
SWEP.RVBYawMod = 1.5
SWEP.RVBRollMod = 1

SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Automatic		= false

SWEP.Primary.Ammo			= "RPG_Round"

SWEP.FireMoveMod = 0
SWEP.FireDelay = 60/800
SWEP.FireSound = "CGM3_FIRE"
SWEP.FireSoundSuppressed = "MP5_FIRE_SUPP"
SWEP.Recoil = 0.1
SWEP.FOVPerShot = .15

SWEP.HipSpread = 0.03
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 0.75
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 250
SWEP.DeployTime = 0.9
SWEP.HolsterTime = 0.7

SWEP.ADSFireAnim = false
SWEP.Chamberable = false
SWEP.BipodInstalled = false

--SWEP.RecoilToSpread = 0.25

SWEP.ReloadSpeed = 1.35
SWEP.ReloadTime = 4.65
SWEP.ReloadHalt = 7.8
SWEP.ReloadTime_Empty = 4.65
SWEP.ReloadHalt_Empty = 7.8
SWEP.SnapToIdlePostReload = false

if CLIENT then
	function SWEP:IndividualInitialize()
		self:setTelescopicsFOVRange(self.zoomLevels, self.simpleTelescopicsFOVRange)
	end
	
	local old, x, y, ang
	local reticle = surface.GetTextureID("sprites/scope_leo")

	local lens = surface.GetTextureID("cw2/gui/lense")
	local lensMat = Material("cw2/gui/lense")
	local cd, alpha = {}, 0.5
	local Ini = true

	-- render target var setup
	cd.x = 0
	cd.y = 0
	cd.w = 512
	cd.h = 512
	cd.fov = 3
	cd.drawviewmodel = false
	cd.drawhud = false
	cd.dopostprocess = false

	function SWEP:RenderTargetFunc()
		local complexTelescopics = self:canUseComplexTelescopics()
		
		-- if we don't have complex telescopics enabled, don't do anything complex, and just set the texture of the lens to a fallback 'lens' texture
		if not complexTelescopics then
			self.TSGlass:SetTexture("$basetexture", lensMat:GetTexture("$basetexture"))
			return
		end
		
		if self.dt.State == CW_AIMING then
			alpha = math.Approach(alpha, 0, FrameTime() * 5)
		else
			alpha = math.Approach(alpha, 1, FrameTime() * 5)
		end
		
		x, y = ScrW(), ScrH()
		old = render.GetRenderTarget()

		ang = self:getTelescopeAnglesNew()
		
		if self.ViewModelFlip then
			ang.r = -self.BlendAng.z
		else
			ang.r = self.BlendAng.z
		end
		
		--[[if not self.freeAimOn then
			ang:RotateAroundAxis(ang:Right(), self.RTAlign.right)
			ang:RotateAroundAxis(ang:Up(), self.RTAlign.up)
			ang:RotateAroundAxis(ang:Forward(), self.RTAlign.forward)
		end]]
		
		local size = self:getRenderTargetSize()

		cd.w = size
		cd.h = size
		cd.angles = ang
		cd.origin = self.Owner:GetShootPos()
		
		self:adjustTelescopicsFOV(cd)
		
		render.SetRenderTarget(self.ScopeRT)
		render.SetViewPort(0, 0, size, size)
			if alpha < 1 or Ini then
				render.RenderView(cd)
				Ini = false
			end
			
			ang = self.Owner:EyeAngles()
			ang.p = ang.p + self.BlendAng.x
			ang.y = ang.y + self.BlendAng.y
			ang.r = ang.r + self.BlendAng.z 
			ang = -ang:Forward()
			
			local light = render.ComputeLighting(self.Owner:GetShootPos(), ang)
			
			cam.Start2D()
				surface.SetDrawColor(255, 255, 255, 255)
				surface.SetTexture(reticle)
				surface.DrawTexturedRect(0, 0, size, size)
				
				if alpha < 1 then
					self:drawLensShadow(size, size)
				end
				
				surface.SetDrawColor(150 * light[1], 150 * light[2], 150 * light[3], 255 * alpha)
				surface.SetTexture(lens)
				surface.DrawTexturedRectRotated(size * 0.5, size * 0.5, size, size, 90)
			cam.End2D()
		render.SetViewPort(0, 0, x, y)
		render.SetRenderTarget(old)
		
		if self.TSGlass then
			self.TSGlass:SetTexture("$basetexture", self.ScopeRT)
		end
	end
end

function SWEP:fireAnimFunc()
	clip = self:Clip1()
	cycle = 0
	rate = 1
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

function SWEP:PrimaryAttack()
	if not self:canFireWeapon(1) then
			return
	end
	
	--if self.Owner:KeyDown(IN_USE) then
		--self.Owner:EmitSound( "weapons/doipack/shared/snackbar1.wav", 75, math.random (75,125) )
		--self.Weapon:SetNextPrimaryFire( CurTime() + 1.45 )
		--local TauntSounds = {
		--"weapons/doipack/shared/snackbar1.wav",
		--"weapons/doipack/shared/snackbar2.wav",
		--"weapons/doipack/shared/snackbar3.wav",
		--"weapons/doipack/shared/snackbar4.wav"}
		--local random = math.random(1, #TauntSounds)  
		--self.Owner:EmitSound(TauntSounds[random]) 
		--if (!SERVER) then return end
		--	return
	--end

	if not self:canFireWeapon(2) then
		return
	end
	
	if self.dt.Safe then
		self:CycleFiremodes()
		return
	end
	
	if not self:canFireWeapon(3) then
		return
	end
	
	mag = self:Clip1()
	CT = CurTime()
	
	if mag == 0 then
		self:EmitSound("CW_EMPTY", 100, 100)
		self:SetNextPrimaryFire(CT + 0.25)
		return
	end
	
	if self.BurstAmount and self.BurstAmount > 0 then
		if self.dt.Shots >= self.BurstAmount then
			return
		end
		
		self.dt.Shots = self.dt.Shots + 1
	end
	
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	if IsFirstTimePredicted() then
		local muzzleData = EffectData()
		muzzleData:SetEntity(self)
		util.Effect("cw_muzzleflash", muzzleData)
		
		if self.dt.Suppressed then
			self:EmitSound(self.FireSoundSuppressed, 105, 100)
		else
			self:EmitSound(self.FireSound, 105, 100)
		end
		
		if self.fireAnimFunc then
			self:fireAnimFunc()
		else
			if self.dt.State == CW_AIMING then
				if self.ADSFireAnim then
					self:playFireAnim()
				end
			else
				self:playFireAnim()
			end
		end
	end
	
			-- apply a global delay after shooting, if there is one

	Dist = self.Owner:GetShootPos():Distance(self.Owner:GetEyeTrace().HitPos)
	
	if Dist <= 45 then
		return
	end

	if self:Clip1() == 0 then
		return
	end

	aimVec = self.Owner:GetAimVector()
		
		local pos = self.Owner:GetShootPos()
		local eyeAng = self.Owner:EyeAngles()
		local forward = eyeAng:Forward()
		local offset = forward * 30 + eyeAng:Right() * 3.5 - eyeAng:Up() * 2.5
		
		if self:isAiming() then offset = forward * 35 + eyeAng:Right() * 0.5 - eyeAng:Up() * 2.5
		end
	
	if SERVER and not self.ActiveAttachments.ha_cgm3_smoke and not self.ActiveAttachments.ha_cgm3_uhv and not self.ActiveAttachments.ha_cgm3_heat then
		missile = ents.Create("ent_ha_cgm3he")
		missile:SetPos(pos + offset)
		missile:SetAngles(eyeAng)
		missile:Spawn()
		missile:Activate()
		missile:SetOwner(self.Owner)
		local phys = missile:GetPhysicsObject()
		
		if IsValid(phys) then
			phys:SetVelocity(forward * 6000)
		end
end
		
	if SERVER and self.ActiveAttachments.ha_cgm3_smoke then
		missile = ents.Create("ent_ha_cgm3smk")
		missile:SetPos(pos + offset)
		missile:SetAngles(eyeAng)
		missile:Spawn()
		missile:Activate()
		missile:SetOwner(self.Owner)
		local phys = missile:GetPhysicsObject()
		
		if IsValid(phys) then
			phys:SetVelocity(forward * 3500)
		end
end

	if SERVER and self.ActiveAttachments.ha_cgm3_uhv then
		missile = ents.Create("ent_ha_cgm3uhv")
		missile:SetPos(pos + offset)
		missile:SetAngles(eyeAng)
		missile:Spawn()
		missile:Activate()
		missile:SetOwner(self.Owner)
		local phys = missile:GetPhysicsObject()
		
		if IsValid(phys) then
			phys:SetVelocity(forward * 9000)
		end
end

	if SERVER and self.ActiveAttachments.ha_cgm3_heat then
		missile = ents.Create("ent_ha_cgm3heat")
		missile:SetPos(pos + offset)
		missile:SetAngles(eyeAng)
		missile:Spawn()
		missile:Activate()
		missile:SetOwner(self.Owner)
		local phys = missile:GetPhysicsObject()
		
		if IsValid(phys) then
			phys:SetVelocity(forward * 5000)
		end
end
	
	self:delayEverything(.65)
	self:setGlobalDelay(.65)
	
	self.Owner:ViewPunch(Angle(-2, 0, 1))
	
	
	self:SetClip1(0)
	
end