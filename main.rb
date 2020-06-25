def merge_sorted_halves(a,b)
    c = []
    loop do
        if a.first < b.first
            c.push(a.first)
            a.shift
        else
            c.push(b.first)
            b.shift
        end
        if a.size == 0 || b.size == 0
            a.size == 0 ? c.append(b) : c.append(a)
            break
        end
    end
    c.flatten
end

def sort(array)
    return array if array.size == 1
    unless array.size <= 1
        left_half = array.first(array.size/2)
        right_half = array.last(array.size - array.size/2)       
        merge_sorted_halves(sort(left_half), sort(right_half))
    end
end

p sort([5,2,1,3,6,4])