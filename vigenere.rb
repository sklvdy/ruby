#функция для определения сдвига по ключу
def offset(arg)
    return arg.ord - ?a.ord 
end

puts "Enter what you are walking: encrypt or decrypt
Write e or d according to the answer"
str = gets.strip.downcase

#функция для шифрования
if str == 'e'
    puts "Enter the encryption string:"
    e = gets.strip.downcase
    puts "Enter the key:"
    k = gets.strip.downcase

    def encryption(e, k)
        min = ?a.ord
        max = ?z.ord
        i = 0 
        r = 0
        e.each_char do |l|
            l = e[i]
            obj = k[r]
            off = offset(obj) 
            e[i] = case   
            when ((l.ord >= min) and (l.ord <= max)) == true   
                (((l.ord - min) + off) % 26 + min).chr
            else
                l
            end

            i += 1

            if ((l.ord >= min) and (l.ord <= max)) == true
                r += 1
            end

            if r == k.size
                r = 0
            end

            if i > e.size 
                break
            end
        end 
        return e
    end

    e = encryption(e, k)

    puts e

#функция для расшифровки

elsif  str == 'd'
    puts "Enter the decryption string:"
    d = gets.strip.downcase
    puts "Enter the key:"
    k = gets.strip.downcase
    def decryption(e, k)
        min = ?a.ord
        max = ?z.ord
        i = 0 
        r = 0
        e.each_char do |l|
           l = e[i]
            obj = k[r]
            off = offset(obj) 
            e[i] = case   
            when ((l.ord >= min) and (l.ord <= max)) == true   
                (((l.ord - min) - off) % 26 + min).chr
            else
                l
            end

            i += 1

            if ((l.ord >= min) and (l.ord <= max)) == true
                r += 1
            end

            if r == k.size
                r = 0
            end

            if i > e.size 
                break
            end
        end 
        return e
    end

    d = decryption(d, k)

    puts d

else 
    puts 'not right, you need to write e or d'
end