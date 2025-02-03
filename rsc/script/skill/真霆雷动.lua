function InitSkillData(skill)
    skill.name = "真霆雷动" -- 技能名称
    skill.rate = 2160.0 / 1195    -- 技能伤害倍率(使用自定义伤害倍率这里需要填0)
    skill.hitCount = 9   -- 技能打击段数
    skill.type = SKILL_TYPE.NORMAL -- 技能类型
    skill.useCustomRate = false -- 是否使用自定义倍率（通常用于多段技能，且每一段技能的伤害倍率不同）
    skill.scriptPath = "skill\\真霆雷动.lua"

    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- 技能受到专精属性影响
        0
    )

    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveTalent("养剑") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            0.05
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
    local player = GetLocalPlayer()
    if player:isHaveBuff("雷元爆发") then
        player:addBuff("雷元爆发", 1)
    end

    return true
end