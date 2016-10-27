require 'board.rb'

describe Board do

  describe "#new" do
    it "creates a new Board" do
      expect(subject).to be_an_instance_of(Board)
    end
  end

  describe "#cell" do
    it "returns an Array" do
      expect(subject.cell).to be_an_instance_of(Array)
    end
    it "returns a coordinate" do
      expect(subject.cell[0]).to eql([0,1])
    end
  end

  describe "#won_game?" do
    it "returns True if a row matches" do
      subject.cell[0][1] = "X"
      subject.cell[1][1] = "X"
      subject.cell[2][1] = "X"
      expect(subject.won_game?).to be(true)
    end
    it "returns False if a row doesn't match" do
      subject.cell[0][1] = "X"
      subject.cell[1][1] = "O"
      subject.cell[2][1] = "X"
      expect(subject.won_game?).to be(false)
    end
  end
end
