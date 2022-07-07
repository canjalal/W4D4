class Array
    def my_uniq
       uniq = []
       self.each do |ele|
        uniq << ele if !uniq.include?(ele)
       end 
       uniq
    end
end