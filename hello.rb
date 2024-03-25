def degree_of_two(num)
    for d in 0..(num / 2)
        if Math.log2(num) == d
                 k = d
                break
        else k = 'not degree'
        end
    end
    return k
end  
a = degree_of_two(3)
puts a