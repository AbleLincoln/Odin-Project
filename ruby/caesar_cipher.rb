def caesar_cipher words, shift
  letters = []
  words.each_byte do |char|
    unless char == 32
      if char < 97
        if char + shift > 90
          # shift = char + shift - 91
          char = 'A'.ord + char + shift - 91
        else
          char = char + shift
        end
      else
        if char + shift > 122
          # shift = char + shift - 123
          char = 'a'.ord + char + shift - 123
        else
          char = char + shift
        end
      end
    end
    letters.push char.chr
  end
  return letters.join
end

words = gets.chomp
shift = gets.chomp.to_i
puts caesar_cipher words, shift
