require 'towers'

describe Game do
    subject(:game) {Game.new(3)}

    describe "#initialize" do
        it "should set stacks to be a 2-D array with the first subarray filled with disks of descending value from n to 1 and the others empty" do
            expect(game.stacks).to eq([[3, 2, 1], [], []])
        end
    end

    describe "#move" do
        it "moves a disk from one array to another" do
            game.move(0, 2)
            expect(game.stacks).to eq([[3, 2], [], [1]])
        end
    end
end