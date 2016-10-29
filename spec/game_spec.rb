require 'game.rb'

describe Game do
  let (:game) { Game.new }

  describe "#new" do
    it "creates a new Game" do
      expect(game).to be_an_instance_of(Game)
    end
  end

  describe "#player_one" do
    it "it is an instance of Player" do
      expect(game.player_one).to be_an_instance_of(Player)
    end
    it "returns a name" do
      expect(game.player_one.name).to eql("Player 1")
    end
    it "returns a marker" do
      expect(game.player_one.marker).to eql("X")
    end
  end

end
