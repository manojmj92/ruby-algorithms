def reverse_single_word(word,start_position,end_position)
	#this will reverse a single string.
	#EG: here becomes ereh
	while start_position <= end_position
		word[start_position],word[end_position] = word[end_position],word[start_position]
		start_position += 1
		end_position -= 1
	end
end

def reverse_words(string)
	#reverse the whole string first
 	reverse_single_word(string,0,string.length-1)
	#for each part of the string which has multiple words,reverse it again when space is encountered
	start_position = 0
	for index in 0..string.length
		if string[index] == " " or index == string.length #end of single word encountered
			reverse_single_word(string,start_position,index-1)
			start_position = index+1
		end
	end
	string
end

puts reverse_words("I am new here")
#expected output : here new am I