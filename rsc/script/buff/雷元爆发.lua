function InitBuffData(buff)
    buff.name = "��Ԫ����" -- buff����
    buff.value = 0.05; --buff��ֵ
    
    buff.addEffect(
        BUFF_EFFECT.ADD_ATTACK_PERCENT
    )

    return true
end

function Apply()
    return true; 
end

function UnApply()
    return true
end