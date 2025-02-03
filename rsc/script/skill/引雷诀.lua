function InitSkillData(skill)
    skill.name = "���׾�" -- ��������
    skill.rate = 0.95     -- �����˺�����
    skill.hitCount = 1   -- ���ܴ������
    skill.type = SKILL_TYPE.THUNDER -- ��������
    skill.useCustomRate = false -- �Ƿ�ʹ���Զ��屶�ʣ�ͨ�����ڶ�μ��ܣ���ÿһ�μ��ܵ��˺����ʲ�ͬ��
    skill.scriptPath = "skill\\���׾�.lua"

    ----- ��Ӽ������� -----
    skill:addAttribute(
        ATTRIBUTE_TYPE.USE_SPEC, -- �����ܵ�ר������Ӱ��
        0
    )
    return true
end

function PreCast(skill)
    ---- ���ڴ�������� ----
    local player = GetLocalPlayer()
    if player:isHaveTalent("���׾�������") then
        skill:addAttribute(ATTRIBUTE_TYPE.INCREACE_SKILL_DMG, 0.24);
    end
end

function PostCast(skill)
    ---- ���ڼ����ͷŽ�����Ķ������ ----
    local player = GetLocalPlayer()
    if player:isHaveTalent("���׾�������") then
        player:addExtraSkillQueue("���׾�")
    end
end