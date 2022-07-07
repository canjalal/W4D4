require 'two_sum'

=begin
Returns a 2-D array

Returns pairs of indices that sum to 0 sorted by size of first element

=end

describe 'Array#two_sum' do
    let(:arr) {[-1, 0, 2, -2, 1]}

    it "returns a 2-D array" do
       expect(arr.two_sum[0].class).to be(Array) 
    end
    it "returns pairs of indices that sum to 0 sorted by size of first element" do
        expect(arr.two_sum).to eq([[0,4], [2, 3]])
    end

end