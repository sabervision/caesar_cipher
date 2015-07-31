
def caesar_cipher (string, shift_factor)
	ascii = string.chars.to_a.map(&:ord)
	shift = ascii.map { |ch| ch + shift_factor unless ch == 32 }
	shifted = shift.map do |ch|
		if ch.nil?
			ch = 32
			ch.chr
		else
			ch.to_i.chr
		end
	end
	caesar = shifted.join('')
	print caesar
end

puts caesar_cipher("This is a test string", 5)