require "my_transpose"

describe "#my_transpose" do
  let(:rows) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}

  it "it takes a two D array and switches rows with columns" do
    col = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
    expect(my_transpose(rows)).to eq(col)
  end
end
