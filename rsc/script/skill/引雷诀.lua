function InitSkillData(skill)
    skill.name = "引雷诀" -- 技能名称
    skill.rate = 0.95     -- 技能伤害倍率
    skill.hitCount = 1   -- 技能打击段数
    skill.type = SKILL_TYPE.THUNDER -- 技能类型
    skill.useCustomRate = false -- 是否使用自定义倍率（通常用于多段技能，且每一段技能的伤害倍率不同）
    skill.scriptPath = "skill\\引雷诀.lua"

    ----- 添加技能属性 -----
    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- 技能受到专精属性影响
        0
    )
    return true
end

function PreCast(skill)
    ---- 用于处理天书点 ----
    local player = GetLocalPlayer()
    if player:isHaveTalent("引雷诀·砺雷") then
        skill:addAttribute(ATTRIBUTE_TYPE.INCREACE_SKILL_DMG, 0.24);
    end
end

function PostCast(skill)
    ---- 用于技能释放结束后的额外操作 ----
    local player = GetLocalPlayer()
    if player:isHaveTalent("引雷诀·霹雳") then
        player:addExtraSkillQueue("引雷诀")
    end
end