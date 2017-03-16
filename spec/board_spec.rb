require 'board.rb'

describe Board do
  describe "clear" do
    it "returns cell to its original value" do
      subject.cell = [1, 2, "O", 4, 5, "X", 7, 8, 9]
      subject.clear
      expect(subject.cell).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
