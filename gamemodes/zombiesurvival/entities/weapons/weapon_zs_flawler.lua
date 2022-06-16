AddCSLuaFile()

SWEP.PrintName = "'Flawler' Assault Rifle"
SWEP.Description = "An unsophisticated assault rifle which has good damage and accuracy."

SWEP.Slot = 2
SWEP.SlotPos = 0

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60

	SWEP.HUD3DBone = "v_weapon.famas"
	SWEP.HUD3DPos = Vector(1.1, -3.5, 10)
	SWEP.HUD3DScale = 0.02
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.ViewModel = "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel = "models/weapons/w_rif_famas.mdl"
SWEP.UseHands = true
SWEP.Tier = 2
SWEP.ReloadSound = Sound("Weapon_FAMAS.Clipout")
SWEP.Primary.Sound = Sound("Weapon_FAMAS.Single")
SWEP.Primary.Damage = 30
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.16

SWEP.Primary.ClipSize = 22
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 3.0 --0.045
SWEP.ConeMin = 1.6 --0.019

SWEP.ReloadSpeed = 1.1

SWEP.WalkSpeed = SPEED_SLOW

SWEP.IronSightsPos = Vector(-3, 3, 2)

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MAX_SPREAD, -0.375, 1)
GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MIN_SPREAD, -0.2, 1)
GAMEMODE:AddNewRemantleBranch(SWEP, 1, "'Flawler' Combat Rifle", "Loses automatic fire rate but gains a bit of damage and accuracy", function(wept)
	wept.Primary.Damage = wept.Primary.Damage * 1.2
	wept.Primary.Delay = wept.Primary.Delay * 2
	wept.Primary.ClipSize = 15
	wept.ConeMin = wept.ConeMin * 0.7
	wept.ConeMax = wept.ConeMax * 0.7
	wept.Primary.Automatic = false
end)
GAMEMODE:AddNewRemantleBranch(SWEP, 1, "'Flawler' Combat Rifle", "Loses fire rate but shoots another bullet and deals a bit more damage", function(wept)
	wept.Primary.Damage = wept.Primary.Damage * 1.1
	wept.Primary.Delay = wept.Primary.Delay * 2
	wept.Primary.ClipSize = 20
	wept.Primary.NumShots = 2
end)

