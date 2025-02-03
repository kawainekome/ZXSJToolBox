function InitSkillData(skill)
    skill.name = "ŭ���١���" -- ��������
    skill.rate = 598.0 / 1195    -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 1   -- ���ܴ������
    skill.type = SKILL_TYPE.NORMAL -- ��������
    skill.useCustomRate = false -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\ŭ����_��.lua"
    
    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- �����ܵ�ר������Ӱ��
        0
    )

    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveTalent("ŭ���١�����") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            2
        )
    end
    return true
end

function PostCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveBuff("��Ԫ����") then
        player:addBuff("��Ԫ����", 1)
    end
end