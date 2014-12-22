class RemoveDuplicates

	def initialize(string)
		@character_array = string.scan /\w/
		@character_hash = Hash.new
		remove_duplicate
		print_output
	end

private

	def remove_duplicate
		@character_array.each {|character| @character_hash[character] = true}
 	end
	
 	def print_output
 		puts "Characters after duplicate removal\n"
		@character_hash.each_key{|character| print character }
		print_new_line
 	end

 	def print_new_line
 		print "\n"
 	end


end

puts "Enter the string\n"
string = gets.chomp

RemoveDuplicates.new(string)

==begin
INPUT => OUTPUT
rubyy => ruby
helloo => helo
==end
