require 'ruby2d'
require './draw.rb'
require './sorting.rb'

set title: "Bubble sort visualization"

width = get :width
height = get :height
operations_count = 0
tick = 0
values = []
width.times { values << rand(height) } # poppulate array with random integers

update do
    clear

    if tick >= values.count
        puts "Done with #{operations_count} operations for array with #{values.count} elements"
        close
    end

    values, current_operations_count = do_sort(values)
    operations_count += current_operations_count
    
    draw_values(values)
    draw_operations_count(operations_count)

    tick += 1
end

show