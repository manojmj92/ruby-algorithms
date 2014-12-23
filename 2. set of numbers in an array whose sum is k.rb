def find(array,desired_sum)
	seen_numbers = [] #to keep track of already visited numbers
	sets = [] #to store set of numbers
	array.each do |number|
		unless seen_numbers.include? number
			other_number = desired_sum-number
			if array.include? other_number
				sets << [[number,other_number].min,[number,other_number].max] unless sets.include? [[number,other_number].min,[number,other_number].max]
				seen_numbers << number
			end
		end
	end
	print_result sets
end

def print_result sets
	sets.each{|set| puts set.to_s}
end

array = [7,2,1,1,3,2,1,2,5,-2]
desired_sum = 3
find(array,desired_sum)