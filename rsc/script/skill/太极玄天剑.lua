function InitSkillData(skill)
    skill.name = "̫�����콣" -- ��������
    skill.rate = 718.0 / 1195    -- �����˺�����(ʹ���Զ����˺�����������Ҫ��0)
    skill.hitCount = 1   -- ���ܴ������
    skill.type = SKILL_TYPE.NORMAL -- ��������
    skill.useCustomRate = false -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\̫�����콣.lua"

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
    return true
end

function PostCast(skill)
    return true
end