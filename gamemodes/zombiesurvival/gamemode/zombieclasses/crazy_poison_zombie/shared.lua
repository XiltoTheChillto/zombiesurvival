CLASS.Base = "poison_zombie"

CLASS.Name = "Crazy Poison Zombie"
CLASS.TranslationName = "class_crazy_poison_zombie"
CLASS.Description = "description_wild_poison_zombie"
CLASS.Help = "controls_poison_zombie"
CLASS.BetterVersion = "Insane Poison Zombie"
CLASS.Wave = 7 / 16

CLASS.Health = 1060
CLASS.SWEP = "weapon_zs_crazypoisonzombie"

CLASS.Points = CLASS.Health/GM.PoisonZombiePointRatio

local math_random = math.random

function CLASS:PlayPainSound(pl)
	pl:EmitSound("npc/zombie_poison/pz_pain"..math_random(3)..".wav", 74, math.random(88, 95))
	pl.NextPainSound = CurTime() + 0.5

	return true
end
