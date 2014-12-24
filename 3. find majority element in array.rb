# A number is a majority if it happens more than half the size of the array
def check_if_majority array,can_be_majority_element
	majority = (array.length+1)/2 if array.length.odd?
	majority = (array.length/2)+1 if array.length.even?
	counter = 0
	array.each{|element| counter+=1 if element==can_be_majority_element}
	if counter > majority
		return can_be_majority_element.to_s + " is the majority"
	else
		return "No clear majority"
	end
end

def find_majority(array)
	count = 0
	can_be_majority_element = nil
	for index in 0..array.length-1
		if count == 0
			can_be_majority_element = array[index]
			count = 1
			next
		end
		count += 1 if array[index] == can_be_majority_element
		count -= 1 unless array[index] == can_be_majority_element
	end
	result = check_if_majority array,can_be_majority_element
	puts result
end


array = [1,1,4,5,2,1,2,1,1,1,1]
find_majority(array)