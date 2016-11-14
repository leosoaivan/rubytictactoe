require './lib/game.rb'

describe Game do

  let (:game) { Game.new }

  describe "attributes" do
    it "allows reading and writing for :player_one" do
      dbl = double("Player One")
      subject.player_one = dbl
      expect(subject.player_one).to eq(dbl)
    end

    it "allows reading and writing for :turns" do
      subject.turns = 7
      expect(subject.turns).to eq(7)
    end
  end

  describe "#new" do
    it "creates an instance of Board" do
      expect(subject.board).to be_an_instance_of(Board)
    end

    it "creates an instance of Player" do
      expect(subject.player_one).to be_an_instance_of(Player)
    end
  end

  describe "#choose_quadrant" do
    it "allows user to choose a quadrant" do
      allow(subject).to receive(:gets).and_return("8")
      expect(subject.choose_quadrant).to eq(7)
    end

    it "loops until a valid quadrant is chosen" do
      allow(subject).to receive(:gets).and_return("10", "11", "2")
      expect(subject.choose_quadrant).to eq(1)
    end
  end
end
