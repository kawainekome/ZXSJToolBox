function InitSkillData(skill)
    skill.name = "先天一气剑阵" -- 技能名称
    skill.rate = 0   -- 技能伤害倍率(使用自定义伤害倍率这里需要填0)
    skill.hitCount = 7   -- 技能打击段数
    skill.type = SKILL_TYPE.NORMAL -- 技能类型
    skill.useCustomRate = false -- 是否使用自定义倍率（通常用于多段技能，且每一段技能的伤害倍率不同）
    skill.scriptPath = "skill\\先天一气剑阵.lua"

    skill:addCustomDamageRate(1, 200.0 / 460)
    skill:addCustomDamageRate(2, 200.0 / 460)
    skill:addCustomDamageRate(3, 70.0 / 460)
    skill:addCustomDamageRate(4, 70.0 / 460)
    skill:addCustomDamageRate(5, 70.0 / 460)
    skill:addCustomDamageRate(6, 70.0 / 460)
    skill:addCustomDamageRate(7, 350.0 / 460)

    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveTalent("御六合") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            0.2
        )
    end

    if player:isHaveTalent("易理") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            0.1
        )
    end
    return true
end

function PostCast(skill)
    return true
end