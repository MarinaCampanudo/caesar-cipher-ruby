def caesar_cipher(string, shift)
  array_caesar = string.chars.map do |char|
    if ("a".."z").include?(char) || ("A".."Z").include?(char)
      if ("A".."Z").include?(char)
        base = "A".ord
      else
        base = "a".ord
      end
      position = char.ord - base
      new_position = (position + shift) % 26
      (new_position + base).chr
    else
      char
    end
  end
  array_caesar.join
end
puts caesar_cipher("What a string!",5)