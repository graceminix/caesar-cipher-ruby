require 'pry-byebug'

# binding.pry

def caesar_cipher(text, number)
  text_to_number = text.bytes
  new_number_array = text_to_number.map { |i|
    if i < 65 || i > 122
      i
    elsif i <= 90
      if (i + number) > 90
        (i + number - 26)
      else
      i + number
      end
    elsif i >= 97
      if (i + number) > 122
        (i + number - 26)
      else
      i + number
      end
    end
  }
  cipher = new_number_array.map {|n| n.chr()}
  cipher = cipher.join + "\n"
  print cipher

end

caesar_cipher("What a string!", 5)