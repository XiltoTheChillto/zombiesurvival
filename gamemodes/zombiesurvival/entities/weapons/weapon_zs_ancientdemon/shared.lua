AddCSLuaFile()

SWEP.PrintName = "Ancient Demon"

SWEP.Base = "weapon_zs_zombie"

SWEP.MeleeDamage = 40
SWEP.MeleeForceScale = 0.5
SWEP.SlowDownScale = 0.1

function SWEP:ApplyMeleeDamage(ent, trace, damage)
	if SERVER and ent:IsPlayer() then
		local gt = ent:GiveStatus("frost", 8)
		local owner = self:GetOwner()

		if gt and gt:IsValid() then
			gt.Applier = owner
		end
		ent:AddLegDamageExt(12, owner, self, SLOWTYPE_COLD)
	end

	self.BaseClass.ApplyMeleeDamage(self, ent, trace, damage)
end

function SWEP:Reload()
	self.BaseClass.SecondaryAttack(self)
end

function SWEP:PlayAlertSound()
	self:GetOwner():EmitSound("npc/fast_zombie/fz_frenzy1.wav", 75, math.Rand(70, 80))
end
SWEP.PlayIdleSound = SWEP.PlayAlertSound

function SWEP:PlayAttackSound()
	self:EmitSound("npc/metropolice/pain"..math.random(4)..".wav", 74, math.Rand(110, 130))
end

local Spread = {
	{0, 0},
	{-0.5, 0},
	{0.5, 0}
}


if not CLIENT then return end

function SWEP:ViewModelDrawn()
	render.ModelMaterialOverride(0)
end

local matSheet = Material("models/weapons/v_zombiearms/ghoulsheet")
function SWEP:PreDrawViewModel(vm)
	render.ModelMaterialOverride(matSheet)
end
