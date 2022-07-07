def my_transpose(arr)
    
    (0...arr.length).map do |i|
        arr.map {|sub| sub[i]}
    end
end