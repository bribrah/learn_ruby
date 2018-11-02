#write your code here
def ftoc(f_temp)
    c_temp = (f_temp -32)* (5.0/9.0)
    if c_temp > 100
        c_temp = 100
        end
    return c_temp
end

def ctof (c_temp)
    f_temp = c_temp * 9.0/5.0 + 32
    if c_temp >= 100
        f_temp = 212
    end
    return f_temp
end
     
