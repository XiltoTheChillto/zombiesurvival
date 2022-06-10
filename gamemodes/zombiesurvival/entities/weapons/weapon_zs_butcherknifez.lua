AddCSLuaFile()

SWEP.Base = "weapon_zs_butcherknife"

SWEP.ZombieOnly = true
SWEP.MeleeDamage = 50
SWEP.OriginalMeleeDamage = SWEP.MeleeDamage
SWEP.Primary.Delay = 0.35

function SWEP:OnMeleeHit(hitent, hitflesh, tr)
	if not hitent:IsPlayer() then
		self.MeleeDamage = 38
	end
end

function SWEP:PostOnMeleeHit(hitent, hitflesh, tr)
	self.MeleeDamage = self.OriginalMeleeDamage
end

function SWEP:SetNextAttack()
	local owner = self:GetOwner()
	local armdelay = owner:GetMeleeSpeedMul()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay * armdelay)
end