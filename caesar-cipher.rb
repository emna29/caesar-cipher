def caesar_cipher(string, num)
    string.chars.map do |char|
        if /[[:alpha:]]/.match char
          shift = char.ord + num
          if /[[:upper:]]/.match char
            shift = shift - 90 + 64 if shift > 90
          else
            shift = shift - 122 + 96 if shift > 122
          end
          shift.chr
        else
          char
        end
      end.join
    end