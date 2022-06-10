AddCSLuaFile()

SWEP.PrintName = "Undead Soldier's Rifle"
--SWEP.Description = "Reliable assault rifle with a very fast reload speed. Not quite as accurate as other assault rifles, but still precise enough nonetheless."

SWEP.Slot = 2
SWEP.SlotPos = 0

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 50

	SWEP.HUD3DBone = "v_weapon.AK47_Parent"
	SWEP.HUD3DPos = Vector(-1, -4.5, -4)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.015
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.ViewModel = "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.UseHands = true

SWEP.ReloadSound = Sound("Weapon_AK47.Clipout")
SWEP.Primary.Sound = Sound("Weapon_AK47.Single")
SWEP.Primary.Damage = 10
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.6
SWEP.Primary.ClipSize = 12
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
GAMEMODE:SetupDefaultClip(SWEP.Primary)
SWEP.Primary.DefaultClip = 9999
SWEP.ConeMax = 1.5
SWEP.ConeMin = 1

SWEP.WalkSpeed = SPEED_SLOW


SWEP.IronSightsPos = Vector(-6.6, 20, 3.1)

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MAX_SPREAD, -0.344)
GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MIN_SPREAD, -0.172)
