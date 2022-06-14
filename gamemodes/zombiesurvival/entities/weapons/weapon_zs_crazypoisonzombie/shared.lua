DEFINE_BASECLASS("weapon_zs_poisonzombie")

SWEP.PrintName = "Crazy Poison Zombie"

SWEP.MeleeDamage = 60
SWEP.MeleeDamageVsProps = 180
SWEP.PoisonThrowSpeed = 550
SWEP.MeleeDelay = 1.3
function SWEP:MeleeHit(ent, trace, damage, forcescale)
	if not ent:IsPlayer() then
		damage = self.MeleeDamageVsProps
	end

	self.BaseClass.MeleeHit(self, ent, trace, damage, forcescale)
end

function SWEP:PlayAttackSound()
	self:EmitSound("npc/zombie_poison/pz_warn"..math.random(2)..".wav", 74, math.random(88, 95), 0.5, CHAN_AUTO)
	self:EmitSound("npc/antlion_guard/angry"..math.random(3)..".wav", 74, math.random(112, 115), 0.5, CHAN_AUTO)
end
