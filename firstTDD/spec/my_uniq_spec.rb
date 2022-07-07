require 'my_uniq'

=begin
We want to start with some easy examples and then some edge cases for things that could be weird

[1, 2, 1, 3, 3] => [1, 2, 3]

Empty array is unmodified

[] => []
=end

describe "my_uniq" do
    let(:arr) {[1, 1, 2, 1, 3, 3]}

    it "returns the array without duplicates, in order" do
        expect(arr.my_uniq).to eq([1, 2, 3])
    end

    it "returns the same array if it is empty" do
        expect([].my_uniq).to eq([])
    end
end