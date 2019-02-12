def do_sort(values)
    operation_count = 0
    values.each_with_index do |value, current_index|
        if values[current_index+1] && values[current_index] > values[current_index+1]    
            values = swap(values, current_index) 
            operation_count += 1
        end
    end
    [values, operation_count]
end

def swap(values, index_to_swap)
    temp = values[index_to_swap]
    values[index_to_swap] = values[index_to_swap+1]
    values[index_to_swap+1] = temp
    values
end
