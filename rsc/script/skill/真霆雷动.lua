function InitSkillData(skill)
    skill.name = "�����׶�" -- ��������
    skill.rate = 2160.0 / 1195    -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 9   -- ���ܴ������
    skill.type = SKILL_TYPE.NORMAL -- ��������
    skill.useCustomRate = false -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\�����׶�.lua"

    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- �����ܵ�ר������Ӱ��
        0
    )

    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveTalent("����") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            0.05
        )
    end
    if player:isHaveTalent("����") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            0.1
        )
    end
    return true
end

function PostCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveBuff("��Ԫ����") then
        player:addBuff("��Ԫ����", 1)
    end

    return true
end