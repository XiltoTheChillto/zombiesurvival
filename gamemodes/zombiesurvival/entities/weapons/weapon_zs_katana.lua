AddCSLuaFile()

SWEP.PrintName = "Katana"
SWEP.Description = "A fast light swinging sharp edged katana."

if CLIENT then
	SWEP.ViewModelFOV = 55
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/katana/katana.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 1, -15), angle = Angle(90, 0, 125), size = Vector(0.8, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
	SWEP.WElements = {
		["base"] = { type = "Model", model = "models/katana/katana.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.5, -2, -15.182), angle = Angle(90, 0, 85), size = Vector(0.8, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.DamageType = DMG_SLASH

SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.UseHands = true
SWEP.NoDroppedWorldModel = true
--[[SWEP.BoxPhysicsMax = Vector(8, 1, 4)
SWEP.BoxPhysicsMin = Vector(-8, -1, -4)]]

SWEP.MeleeDamage = 150
SWEP.MeleeRange = 78
SWEP.MeleeSize = 1.15
SWEP.Primary.Delay = 0.6

SWEP.WalkSpeed = SPEED_FAST

SWEP.UseMelee1 = true

SWEP.HitGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.MissGesture = SWEP.HitGesture

SWEP.HitDecal = "Manhackcut"
SWEP.HitAnim = ACT_VM_MISSCENTER

SWEP.Tier = 4

SWEP.AllowQualityWeapons = true
SWEP.Culinary = true

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_FIRE_DELAY, -0.06)

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/knife/knife_slash"..math.random(2)..".wav", 72, math.Rand(85, 95))
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/knife/knife_hitwall1.wav", 72, math.Rand(75, 85))
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/flesh/flesh_squishy_impact_hard"..math.random(4)..".wav")
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end

function SWEP:PostOnMeleeHit(hitent, hitflesh, tr)
	--[[if hitent:IsValid() and hitent:IsPlayer() and hitent:Health() <= 0 then
		-- Dismember closest limb to tr.HitPos
	end]]
end
