=begin
Compare two version numbers version1 and version1.
If version1 > version2 return 1, if version1 < version2 return -1, otherwise return 0.

You may assume that the version strings are non-empty and contain only digits and the . character.
The . character does not represent a decimal point and is used to separate number sequences.
For instance, 2.5 is not "two and a half" or "half way to version three", it is the fifth second-level revision of the second first-level revision.

Here is an example of version numbers ordering:

	0.1 < 1.1 < 1.2 < 13.37
=end
def split_string(v)
	v.split(".")
end

def compare_versions(v1,v2)
	v1_array = split_string(v1)
	v2_array = split_string(v2)
	length = [v1_array.length,v2_array.length].min
	for index in 0..length-1
		if v1_array[index].to_i == v2_array[index].to_i
			next
		elsif v1_array[index].to_i > v2_array[index].to_i
			return 1
		elsif v1_array[index].to_i < v2_array[index].to_i
			return -1
		end		
	end	
	if v1_array.length > v2_array.length
		return 1
	elsif v1_array.length < v2_array.length
		return -1
	end
	return 0
end


v1 = "3.6.1"
v2 = "3.6.1"

puts "Answer is " + compare_versions(v1,v2).to_s