require 'pry'

def my_all?( array )
    count = 0
    block_return_values = []
    while count < array.length
        block_return_values << yield( array[count] )
        count += 1
    end

    if block_return_values.include?(false)
        false
    else
        true
    end
end