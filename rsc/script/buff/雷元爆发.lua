function InitBuffData(buff)
    buff.name = "雷元爆发" -- buff名称
    buff.value = 0.05; --buff数值
    
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