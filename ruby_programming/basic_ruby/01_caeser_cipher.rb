
def caeser_cipher (string, shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  result = string.scan(/\w/).collect {|letter| letter = alphabet[(alphabet.index(letter) + shift) % 26]}
  result.join
end

print 'What string would you like to encipher? '
string = gets.chomp

print 'What shift would you like to use? '
shift = gets.chomp.to_i

puts caeser_cipher(string, shift)
