class Array
    def two_sum
        newhash = Hash.new {|h, k| h[k] = []}
        self.each_with_index do |ele, i|
            newhash[ele] << i
        end

        newarray = []

        self.each_with_index do |ele, i|
            if(newhash[0 - ele])
                newhash[0 - ele].each do |j|
                    newarray << [i, j] if i < j # only do nested loop if there are duplicates
                end
            end
        end
        newarray

    #     newhash = {}
    #     newarray = []
    #     self.each_with_index do |ele, i|
    #         if newhash[ele]
    #             newarray << [newhash[ele], i]
    #         else
    #             newhash[0 - ele] = i
    #         end
    #     end
    #     newarray
    end
end

p [-1, 0, 2, -2, 1].two_sum
p [-1, 1, -2, 2, -2, 2, 2, -2].two_sum