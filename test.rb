puts "Enter the encryption string:"
e = gets.strip.downcase
puts "Enter the key:"
k = gets.strip.downcase

i = 0
r = 0
while i < e.size
    l = e[i]
    obj = k[r]
    puts obj

    i += 1
    r += 1
    
    if r = k.size - 1
        r = 0
    end

    if i > e.size 
        break
    end
    puts e
end

#введем строку, для кодировки и ключ
puts "Enter the decryption string:"
d = gets.strip.downcase
puts "Enter the encryption string:"
e = gets.strip.downcase
puts "Enter the key:"
k = gets.strip.downcase