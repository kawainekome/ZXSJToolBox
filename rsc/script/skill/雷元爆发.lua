function InitSkillData(skill)
    skill.name = "��Ԫ����" -- ��������
    skill.rate = 0    -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 0   -- ���ܴ������
    skill.type = SKILL_TYPE.NORMAL -- ��������
    skill.useCustomRate = false -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\��Ԫ����.lua"

    return true
end

function PreCast(skill)
    local player = GetLocalPlayer()
    player:addBuff("��Ԫ����", 1)
end

function PostCast(skill)
    return true
end