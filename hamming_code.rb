a1 = [1, 1, 1]
c = (Math.log2((a1.count + 1) + Math.log2(a1.count + 1))).ceil
a2 = Array.new(a1.count + c + 1)
puts "first message:"
p a1

def degree_of_two?(num)
    for d in 0..(num / 2)
        if Math.log2(num) == d
         answer = 'true'
         break
        else answer = 'false'
        end
    end
    return answer
end  

d = 0
h = 0

a2.each_index do |i|
    if i == 0
        a2[i] = 0
    elsif (z = degree_of_two?(i)) == 'true'
        if d == c 
            next
        end
        a2[i] = 0
        d += 1
    else 
        a2[i] = a1[h]
        h += 1
    end
end

stop = 0

a2.each_index do |i|
    if i == 0
        a2[i] = 0
    elsif (z = degree_of_two?(i)) == 'true'
        ch = 0
        if stop == c 
            break
        end
        deg = i
        k = i
        while k < a2.count do
            #ch += a2[k].to_i
            d = 0
            while d != deg do
                if d + k > a2.count - 1
                    break
                end
                ch += a2[k + d].to_i
                d += 1
            end
            k += deg*2
        end
        stop += 1;
        if ch % 2 == 0
            a2[i] = 0
        else a2[i] = 1
        end
    end
end

puts "result is:"
p a2

puts "new messege:"
a12 = [1, 1, 0]

p a12
a22 =  Array.new(a1.count + c + 1)

d = 0
h = 0

a22.each_index do |i|
    if i == 0
        a22[i] = 0
    elsif (z = degree_of_two?(i)) == 'true'
        if d == c 
            next
        end
        a22[i] = 0
        d += 1
    else 
        a22[i] = a12[h]
        h += 1
    end
end

stop = 0
miss = 0

a22.each_index do |i|
    if i == 0
        a22[i] = 0
    elsif (z = degree_of_two?(i)) == 'true'
        ch = 0
        if stop == c 
            break
        end
        deg = i
        k = i
        while k < a22.count do
            d = 0
            while d != deg do
                if d + k > a22.count - 1
                    break
                end
                ch += a22[k + d].to_i
                d += 1
            end
            k += deg*2
        end
        stop += 1;
        if ch % 2 == 0
            a22[i] = 0
        else a22[i] = 1
        end
        if (a22[i].to_i == a2[i].to_i) == false
            miss += i
        end
    end
end

if miss == 0
    puts "messege was sent without mistakes"
else 
    puts "position has been damaged", miss
    if a22[miss].to_i == 1
        a22[miss] = 0
    else a22[miss] = 1
    end
end

d = 0
h = 0

a22.each_index do |i|
    if i == 0
        next
    elsif (z = degree_of_two?(i)) == 'true'
        if d == c 
            next
        end
        d += 1
        next
    else 
        a12[h] = a22[i].to_i
        h += 1
    end
end

puts "damage is fix"
p a12