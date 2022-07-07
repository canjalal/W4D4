require 'stock_picker'

describe "Array#stock_picker" do
it 'identifies correct buy and sell dates if price monotonously increases' do
   expect(stock_picker([4, 5, 6, 7, 8, 9])).to eq([0, 5])
end
it 'identifies correct buy and sell dates if price monotonously decreases' do
    expect(stock_picker([8, 3, 2, 1, -3, -9])).to eq([1, 2])
end

it 'identifies correct dates for general fluctuating stock prices' do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
end