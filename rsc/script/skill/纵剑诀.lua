function InitSkillData(skill)
    skill.name = "�ݽ���" -- ��������
    skill.rate = 0    -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 3   -- ���ܴ������
    skill.type = SKILL_TYPE.NORMAL -- ��������
    skill.useCustomRate = true -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\�ݽ���.lua"

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