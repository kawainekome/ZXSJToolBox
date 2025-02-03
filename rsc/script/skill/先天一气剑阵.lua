function InitSkillData(skill)
    skill.name = "����һ������" -- ��������
    skill.rate = 0   -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 7   -- ���ܴ������
    skill.type = SKILL_TYPE.NORMAL -- ��������
    skill.useCustomRate = false -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\����һ������.lua"

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
    if player:isHaveTalent("������") then
        skill:addAttribute(
            ATTRIBUTE_TYPE.INCREACE_SKILL_DMG,
            0.2
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
    return true
end