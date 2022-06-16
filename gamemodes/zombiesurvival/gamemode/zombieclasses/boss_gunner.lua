--CLASS.Base = "ghoul"

CLASS.Name = "Maniac Assasin"
CLASS.TranslationName = "class_gunner"
--CLASS.Description = "description_chilled_ghoul"
--CLASS.Help = "controls_chilled_ghoul"

--CLASS.BetterVersion = "Frigid Revenant"

--CLASS.Wave = 0
--CLASS.Unlocked = true
CLASS.Boss = true

CLASS.Health = 4720
CLASS.Speed = 200

CLASS.Points = CLASS.Health/GM.HumanoidZombiePointRatio

CLASS.ResistFrost = true

CLASS.SWEP = "weapon_zs_gunnergun"

function CLASS:PlayPainSound(pl)
	pl:EmitSound("npc/zombie/zombie_pain"..math.random(6)..".wav", 75, math.Rand(137, 143))
	pl.NextPainSound = CurTime() + 0.5

	return true
end

function CLASS:PlayDeathSound(pl)
	pl:EmitSound("npc/zombie_poison/pz_die1.wav", 75, math.Rand(120, 128))

	return true
end

if not CLIENT then return end

CLASS.Icon = "zombiesurvival/killicons/ghoul"
CLASS.IconColor = Color(20, 20, 250)



local colGlow = Color(60, 220, 220)
local matSkin = Material("Models/humans/corpse/corpse1.vtf")
--local matGlow = Material("sprites/glow04_noz")
--local vecEyeLeft = Vector(4, -4.6, -1)
--local vecEyeRight = Vector(4, -4.6, 1)

function CLASS:PrePlayerDraw(pl)
	render.ModelMaterialOverride(matSkin)
	render.SetColorModulation(0.2, 0.5, 0.95)
end

function CLASS:PostPlayerDraw(pl)
	render.ModelMaterialOverride()
	render.SetColorModulation(1, 1, 1)

	if pl == MySelf and not pl:ShouldDrawLocalPlayer() or pl.SpawnProtection then return end

	local pos, ang = pl:GetBonePositionMatrixed(6)
	
		
	
end
