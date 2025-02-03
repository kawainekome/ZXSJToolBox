function InitSkillData(skill)
    skill.name = "���������" -- ��������
    skill.rate = 0    -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 7   -- ���ܴ������
    skill.type = SKILL_TYPE.THUNDER -- ��������
    skill.useCustomRate = true -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\���������.lua"

    skill:addCustomDamageRate(1, 0.6)
    skill:addCustomDamageRate(2, 0.6)
    skill:addCustomDamageRate(3, 0.6)
    skill:addCustomDamageRate(4, 0.6)
    skill:addCustomDamageRate(5, 0.6)
    skill:addCustomDamageRate(6, 1)
    skill:addCustomDamageRate(7, 1.6)

    ----- ��Ӽ������� -----
    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- �����ܵ�ר������Ӱ��
        0
    )
    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    player:addBuff("��Ԫ����", 1)

    skill:addAttribute(
        ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
        0.2
    )

    return true
end

function PostCast(skill)
    local player = GetLocalPlayer()
    if player:isHaveBuff("��Ԫ����") then
        player:addBuff("��Ԫ����", 1)
    end

    return true
end