function InitSkillData(skill)
    skill.name = "��Ԫ��������" -- ��������
    skill.rate = 0    -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 0   -- ���ܴ������
    skill.type = SKILL_TYPE.NORMAL -- ��������
    skill.useCustomRate = false -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\��Ԫ��������.lua"

    return true
end

function PreCast(skill)
    return true
end

function PostCast(skill)
    local player = GetLocalPlayer()
    player.removeBuff("��Ԫ����", 0) -- 0��ʾ�Ƴ���ǰ��ɫ�������в�����ָ��buff
end