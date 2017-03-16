require 'game.rb'
require 'board.rb'

describe Game do

  describe "#choose_quadrant" do
    let (:game) { Game.new(:board => Board.new) }

    it "allows user to choose a quadrant" do
      allow(game).to receive(:gets).and_return("8")
      expect(game.choose_quadrant).to eq(7)
    end

    it "loops until a valid quadrant is chosen" do
      allow(game).to receive(:gets).and_return("10", "11", "2")
      expect(game.choose_quadrant).to eq(1)
    end
  end

  # describe "#add_turn" do
  #   it "increments the turn count by 1" do
  #     subject.turns = 0
  #     subject.add_turn
  #     expect(subject.turns).to eq(1)
  #   end
  # end

  # describe "#current_player" do
  #   it "switches to Player 1 on odd turns" do
  #     subject.turns = 1
  #     expect(subject.current_player).to eq(subject.player_one)
  #   end
  #   it "switches to Player 2 on even turns" do
  #     subject.turns = 232
  #     expect(subject.current_player).to eq(subject.player_two)
  #   end
  # end

end
