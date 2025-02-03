function InitSkillData(skill)
    skill.name = "雷元爆发" -- 技能名称
    skill.rate = 0    -- 技能伤害倍率(使用自定义伤害倍率这里需要填0)
    skill.hitCount = 0   -- 技能打击段数
    skill.type = SKILL_TYPE.NORMAL -- 技能类型
    skill.useCustomRate = false -- 是否使用自定义倍率（通常用于多段技能，且每一段技能的伤害倍率不同）
    skill.scriptPath = "skill\\雷元爆发.lua"

    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    player:addBuff("雷元爆发", 1)
end

function PostCast(skill)
    return true
end