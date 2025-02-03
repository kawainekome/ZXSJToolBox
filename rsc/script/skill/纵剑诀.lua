function InitSkillData(skill)
    skill.name = "纵剑诀" -- 技能名称
    skill.rate = 0    -- 技能伤害倍率(使用自定义伤害倍率这里需要填0)
    skill.hitCount = 3   -- 技能打击段数
    skill.type = SKILL_TYPE.NORMAL -- 技能类型
    skill.useCustomRate = true -- 是否使用自定义倍率（通常用于多段技能，且每一段技能的伤害倍率不同）
    skill.scriptPath = "skill\\纵剑诀.lua"

    skill:addCustomDamageRate(1, 119.0 / 1183.0)
    skill:addCustomDamageRate(2, 355.0 / 1183.0)
    skill:addCustomDamageRate(3, 710.0 / 1183.0)

    return true
end

function PreCast(skill)
    return true
end

function PostCast(skill)
    return true
end