def bubble_sort array
	return array if array.length <= 1
	
	begin
		curr_index = 0
		times = 0
		sorted = true

		while curr_index < array.length - 1 - times do
			if(array[curr_index] - array[curr_index + 1] > 0)
				array[curr_index], array[curr_index + 1] = array[curr_index + 1], array[curr_index] 
				sorted = false
			end
			curr_index += 1
		end
		times += 1
	end while not sorted || times == array.length - 1

	array
end

def bubble_sort_by array
	return array if array.length <= 1
	
	begin	
		curr_index = 0
		times = 0
		sorted = true

		while curr_index < array.length - 1 - times do
			if yield(array[curr_index], array[curr_index + 1]) > 0
				array[curr_index], array[curr_index + 1] = array[curr_index + 1], array[curr_index] 
				sorted = false
			end
			curr_index += 1
		end
		times += 1
	end while not sorted || times == array.length - 1

	array
end
