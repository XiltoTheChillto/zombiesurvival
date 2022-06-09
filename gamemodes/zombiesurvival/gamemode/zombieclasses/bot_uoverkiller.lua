
CLASS.Name = "botoverkiller"
CLASS.TranslationName = "class_uoverkiller"
CLASS.Description = "description_uoverkiller"
CLASS.Help = "controls_ancient_nightmare"
CLASS.Wave = 15 / 16
CLASS.Health = 87200
CLASS.Speed = 170

CLASS.Points = 30

CLASS.SWEP = "weapon_zs_botuoverkiller"

CLASS.Model = Model("models/player/charple.mdl")
CLASS.OverrideModel = Model("models/player/skeleton.mdl")

CLASS.NoHideMainModel = true
--CLASS.Skeletal = true

local math_random = math.random

function CLASS:PlayerFootstep(pl, vFootPos, iFoot, strSoundName, fVolume, pFilter)
	if math_random(2) == 1 then
		pl:EmitSound("npc/barnacle/neck_snap1.wav", 65, math_random(115, 130), 0.27)
	else
		pl:EmitSound("npc/barnacle/neck_snap2.wav", 65, math_random(115, 130), 0.27)
	end

	return true
end

if not CLIENT then return end


CLASS.Icon = "zombiesurvival/killicons/ancient_nightmare"
