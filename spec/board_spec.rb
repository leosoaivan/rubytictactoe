require 'board.rb'

describe Board do

  describe "attributes" do
    it "allows reading from :cell" do
      cell = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(subject.cell).to match_array(cell)
    end

    it "allows writing to :cell" do
      subject.cell[0] = "X"
      expect(subject.cell[0]).to eq("X")
    end
  end

  describe "#new" do
    it "creates a new Board" do
      expect(subject).to be_an_instance_of(Board)
    end
  end

  describe "#won?" do
    it "returns true if a horizontal row matches" do
      subject.cell[0] = "X"
      subject.cell[1] = "X"
      subject.cell[2] = "X"
      expect(subject).to be_won
    end
    it "returns true if a vertical row matches" do
      subject.cell[0] = "X"
      subject.cell[3] = "X"
      subject.cell[6] = "X"
      expect(subject).to be_won
    end
    it "returns true if a diagonal row matches" do
      subject.cell[0] = "X"
      subject.cell[4] = "X"
      subject.cell[8] = "X"
      expect(subject).to be_won
    end
    it "returns false if there is no match" do
      subject.cell[0] = "X"
      subject.cell[4] = "O"
      subject.cell[8] = "X"
      expect(subject).not_to be_won
    end
  end
end
