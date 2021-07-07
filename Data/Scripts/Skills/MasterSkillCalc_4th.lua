-- // ============================================================
-- // == INTERNATIONAL GAMING CENTER NETWORK
-- // == www.igcn.mu
-- // == (C) 2019 IGC-Network (R)
-- // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- // == File is a part of IGCN Group MuOnline Server files.
-- // ============================================================

-- MasterSkillCalc Control Script, Lua v5.2
-- Skill Tree Skill Configuration (Result, Time) - Can be modified to adjust for own needs

-- SkillID refers to Index of skill in \Data\Skills\SkillList.txt

-- Character Classes
CLASS_WIZARD                                          = 0
CLASS_KNIGHT                                          = 1
CLASS_ELF                                             = 2
CLASS_GLADIATOR                                       = 3
CLASS_DARKLORD                                        = 4
CLASS_SUMMONER                                        = 5
CLASS_RAGEFIGHTER                                     = 6
CLASS_GROWLANCER									  = 7
CLASS_RUNEWIZARD									  = 8
CLASS_SLAYER										  = 9

-- SkillID: 1071, Soul Barrier Strengthener - (Grand Master)
function DeathStab_4thEnchant_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

function RagefulBlow_4thEnchant_Knight(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 10 + 200) / 100
	
	return OutDamage
end

function FireBlow_4thEnchant_Knight(InDamage, Energy)
	local OutDamage = (InDamage * ( 200 + ( Energy / 10 ) ) ) / 100;

	return OutDamage
end

function FireBlood_4thEnchant_Gladiator(InDamage, Strength, Energy)
	local OutDamage = InDamage * 2
	local SuccessRate = 6
	local DebuffDamage = Strength / 10
	local DebuffTime = 10
	
	return OutDamage, SuccessRate, DebuffDamage, DebuffTime
end

function IceBlood_4thEnchant_Gladiator(InDamage, Strength, Energy)
	local OutDamage = InDamage * 2
	local SuccessRate = 6
	local DebuffTime = 10
	
	return OutDamage, SuccessRate, DebuffTime
end

function FireSlash_4thEnchant_Gladiator(InDamage, Strength, Energy, BarrageCount)
    local OutDamage = InDamage * 2
    
    if (BarrageCount == 0) then
        OutDamage = OutDamage * 0.15
    elseif (BarrageCount == 1) then
        OutDamage = OutDamage * 0.18
    elseif (BarrageCount == 2) then
        OutDamage = OutDamage * 0.22
    elseif (BarrageCount == 3) then
        OutDamage = OutDamage * 0.25
    end
	return OutDamage
end

function WindSoul_4thEnchant_Lord(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 25 + 200) / 100
	
	return OutDamage
end

function ChaoticDiseier_4thEnchant_Lord(InDamage, Energy)
	local OutDamage = InDamage * (Energy / 25 + 200) / 100
	
	return OutDamage
end

function FireBurst_4thEnchant_Lord(InDamage, Energy)
	local OutDamage = (InDamage * (((Energy) / 20 + 200))) / 100;
	
	return OutDamage
end

function DarkSide_4thEnchant_Fighter(InDamage, Dexterity, Energy)
	local OutDamage = (Dexterity / 8 + InDamage + Energy / 10) * (Dexterity / 8 + Energy / 10 + 100) / 100.0
 
	return OutDamage
end

function DragonRoar_4thEnchant_Fighter(InDamage, Energy)
	local OutDamage = (InDamage + Energy / 10) * (Energy / 10 + 50) / 100.0
 
	return OutDamage
end

function Breche_4thEnchant_Lancer(InDamage, Strength, SkillTreeBonus)
	local OutDamage = (InDamage * 0.5) * (Strength / 10 + 97 + SkillTreeBonus) / 100.0

	return OutDamage
end

function MagicPin_4thEnchant_Lancer(InDamage, Dexterity, SkillTreeBonus, BarrageCount)
	local OutDamage = 0
	
	if (BarrageCount == 1) then
		OutDamage = (InDamage * 0.8) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 2) then
		OutDamage = (InDamage * 1.0) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 3) then
		OutDamage = (InDamage * 1.1) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 4) then
		OutDamage = (InDamage * 1.2) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	elseif (BarrageCount == 5) then
		OutDamage = (InDamage * 1.3) * (Dexterity / 10 + 97 + SkillTreeBonus) / 100.0
	end

	return OutDamage
end

function ShiningPeak_4thEnchant_Lancer(InDamage, Strength, Dexterity, SkillTreeBonus_Retailation, SkillTreeBonus_Rage)
	local OutDamage = InDamage * (((Strength / 10 + 97 + SkillTreeBonus_Retailation) + (Dexterity / 10 + 97 + SkillTreeBonus_Rage)) * 0.8) / 100.0
	OutDamage = OutDamage / 3

	return OutDamage
end

function SpiritHook_4thEnchant_Fighter(InDamage, Vitality)
	local OutDamage = (InDamage + Vitality / 10) * (Vitality / 10 + 50) / 100.0
	
	return OutDamage
end

function MultiShot_4thEnchant_Elf(InDamage, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

function GiganticStorm_4thEnchant_Gladiator(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

function TripleShot_4thEnchant_Elf(InDamage, Strength, Dexterity, Energy)
 local OutDamage = InDamage
 
 return OutDamage
end

function FocusShot_4thEnchant_Elf(InDamage, Strength, Dexterity, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function MeteorStorm_4thEnchant_Wizard(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function MeteorStrike_4thEnchant_Wizard(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function LightningShock_4thEnchant_Summoner(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function FireBeast_4thEnchant_Summoner(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function AquaBeast_4thEnchant_Summoner(InDamage, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function DarkBlast_4thEnchant_Gladiator(InDamage, Strength, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function MagicArrow_4thEnchant_RuneWizard(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function PlasmaBall_4thEnchant_RuneWizard(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

function LightningStorm_4thEnchant_RuneWizard(InDamage, Strength, Dexterity, Vitality, Energy)
	local OutDamage = InDamage
	
	return OutDamage
end

-- SkillID: 1159, Bat Flock Enhancement - (Damage over time) - (Slayer, Royal Slayer, Master Slayer, Slaughterer)
function BatFlock_DotDamage_4thEnchant_Slayer(InDamage, Strength, Energy)
	local Damage = InDamage
	local DotDamage = (InDamage / 10)
	local Time = 3
	
	return Damage, DotDamage, Time
end

function SwordInertia_4thEnchant_Slayer(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage * 0.16
	
	return OutDamage
end	

function BatFlock_4thEnchant_Slayer(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	OutDamage = OutDamage * 0.5
	
	return OutDamage
end	

function PierceAttack_4thEnchant_Slayer(InDamage, Strength, Dexterity)
	local OutDamage = InDamage * ((Strength / 8) + (Dexterity / 28) + 120) / 100
	return OutDamage
end	