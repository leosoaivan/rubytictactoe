require './lib/game.rb'

describe Game do

  describe "#new" do
    it "creates an instance of Game" do
      player1 = double('player')
      player2 = double('player')

      expect(Game.new(player1, player2)).to be_an_instance_of(Game)
    end

    context "given two players" do
      it "does not raise an ArgumentError" do
        player1 = double('player')
        player2 = double('player')
        expect {Game.new(player1, player2)}.not_to raise_error
      end
    end

    context "given one player" do
      it "raises an ArgumentError" do
        player1 = double('player')
        expect {Game.new(player1)}.to raise_error(ArgumentError)
      end
    end
  end

end
