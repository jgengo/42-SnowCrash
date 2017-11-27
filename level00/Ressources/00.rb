#!/usr/bin/env ruby

def rot(string, shift)
	alphabet = Array('a'..'z')
	encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
	string.chars.map { |c| encrypter.fetch(c, " ") }
end

if ARGV[0]
	26.times do |i|
		puts "#{i+1} -->  #{rot(ARGV[0], i+1).join}"
	end
else 
	puts "./00.rb 'your string'"
end