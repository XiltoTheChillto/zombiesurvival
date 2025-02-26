CLASS.Name = "Undead Soldier"
CLASS.TranslationName = "class_undeadsoldier"
CLASS.Description = "description_undeadsoldier"
CLASS.Help = "controls_undeadsoldier"
CLASS.BetterVersion = "Undead Fighter"
CLASS.Health = 400
CLASS.Speed = 200
CLASS.Wave = 6 / 16

CLASS.Points = CLASS.Health/GM.HumanoidZombiePointRatio

CLASS.ResistFrost = true

CLASS.SWEP = "weapon_zs_undeadsoldier"
CLASS.Model = Model("models/player/zombie_lacerator2.mdl")
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

CLASS.Icon = "zombiesurvival/killicons/lacerator"
CLASS.IconColor = Color(136, 136, 136)





function CLASS:PrePlayerDraw(pl)
	render.SetColorModulation(0.53, 0.53, 0.53)
end

function CLASS:PostPlayerDraw(pl)
	render.ModelMaterialOverride()
	render.SetColorModulation(0.53, 0.53, 0.53)

	if pl == MySelf and not pl:ShouldDrawLocalPlayer() or pl.SpawnProtection then return end

	local pos, ang = pl:GetBonePositionMatrixed(6)
	
		
	
end
