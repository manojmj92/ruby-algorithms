def check_edge_cases first_array,second_array
	return first_array if second_array.empty?
	return second_array if first_array.empty?
	return -1 if (first_array.empty? and second_array.empty?)
	return nil
end


def merge_arrays first_array,second_array

	final_array_length = first_array.length + second_array.length
	final_array = [] * final_array_length
	final_array_index = second_array_index = first_array_index = 0

	value = check_edge_cases first_array,second_array 
	return value unless value.nil?


	while final_array_index <= final_array_length - 1
		#case when first array is exhausted or 
		if first_array_index > first_array.length - 1
			final_array[final_array_index] = second_array[second_array_index]
			second_array_index += 1
		#second array exhausted 
		elsif second_array_index > second_array.length - 1
			final_array[final_array_index] = first_array[first_array_index]
			first_array_index += 1
		#next element taken from second array
		elsif second_array[second_array_index] < first_array[first_array_index]
			final_array[final_array_index] = second_array[second_array_index]
			second_array_index += 1
		#next element taken from first array
		else
			final_array[final_array_index] = first_array[first_array_index]
			first_array_index += 1
		end
		
	final_array_index += 1	
	end

	final_array


end

array1 = [1,5,6,9,12]
array2 = [2,7,8]

puts merge_arrays(array1,array2).to_s