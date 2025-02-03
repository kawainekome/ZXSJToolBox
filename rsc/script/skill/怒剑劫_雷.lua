function InitSkillData(skill)
    skill.name = "怒剑劫·雷" -- 技能名称
    skill.rate = 598.0 / 1195    -- 技能伤害倍率(使用自定义伤害倍率这里需要填0)
    skill.hitCount = 1   -- 技能打击段数
    skill.type = SKILL_TYPE.NORMAL -- 技能类型
    skill.useCustomRate = false -- 是否使用自定义倍率（通常用于多段技能，且每一段技能的伤害倍率不同）
    skill.scriptPath = "skill\\怒剑劫_雷.lua"
    
    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- 技能受到专精属性影响
        0
    )

    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveTalent("怒剑劫·蕴霆") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            2
        )
    end
    return true
end

function PostCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveBuff("雷元爆发") then
        player:addBuff("雷元爆发", 1)
    end
end