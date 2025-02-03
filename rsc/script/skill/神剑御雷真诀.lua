function InitSkillData(skill)
    skill.name = "神剑御雷真诀" -- 技能名称
    skill.rate = 0    -- 技能伤害倍率(使用自定义伤害倍率这里需要填0)
    skill.hitCount = 7   -- 技能打击段数
    skill.type = SKILL_TYPE.THUNDER -- 技能类型
    skill.useCustomRate = true -- 是否使用自定义倍率（通常用于多段技能，且每一段技能的伤害倍率不同）
    skill.scriptPath = "skill\\神剑御雷真诀.lua"

    skill:addCustomDamageRate(1, 0.6)
    skill:addCustomDamageRate(2, 0.6)
    skill:addCustomDamageRate(3, 0.6)
    skill:addCustomDamageRate(4, 0.6)
    skill:addCustomDamageRate(5, 0.6)
    skill:addCustomDamageRate(6, 1)
    skill:addCustomDamageRate(7, 1.6)

    ----- 添加技能属性 -----
    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- 技能受到专精属性影响
        0
    )
    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    player:addBuff("雷元爆发", 1)

    skill:addAttribute(
        ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
        0.2
    )

    return true
end

function PostCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveBuff("雷元爆发") then
        player:addBuff("雷元爆发", 1)
    end

    return true
end