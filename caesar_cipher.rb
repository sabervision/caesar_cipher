# the following does not account for wrapping A-z and special characters
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

# puts caesar_cipher("This is a test string!", 5)

# Optimized code accounting for wrapping and special characters!

def better_cipher (string, shift_factor)
	string.each_byte do |c|
		if c.between?(65,90)
			c = c + shift_factor
			if c > 90
				c = 64 + (c - 90)
			end
		elsif c.between?(97,122)
			c = c + shift_factor
			if c > 122
				c = 96 + (c - 122)
			end
		end
		print c.chr
	end
	puts ' '			
end

puts better_cipher("What a string!", 10)

