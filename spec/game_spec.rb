require './lib/game.rb'

describe Game do

  let(:player_one) { double('player') }
  let(:player_two) { double('player') }
  let(:game) { Game.new(:player_one, :player_two) }
  let(:board) { Board.new }

  describe "attributes" do
    it "allows reading and writing for :player_one" do
      game.player_one = "Leo"
      expect(game.player_one).to eql("Leo")
    end
    it "allows reading and writing for :turns" do
      game.turns = 7
      expect(game.turns).to eql(7)
    end
  end

  # describe "#new" do
  #   it "creates an instance of Game" do
  #     expect(game).to be_an_instance_of(Game)
  #   end
  #
  #   context "given two players" do
  #     it "does not raise an ArgumentError" do
  #       expect {game}.not_to raise_error
  #     end
  #   end
  #
  #   context "given one player" do
  #     it "raises an ArgumentError" do
  #       expect {Game.new(player1)}.to raise_error(ArgumentError)
  #     end
  #   end
  # end
  #
  # describe "#game_start" do
  #   it "displays a board" do
  #     expect(board.print_board)
  #   end
  # end
  #
  # describe "#start_message" do
  #   it "displays a welcome message" do
  #     expect(game.start_message)
  #   end
  # end
  #
  # describe "#game_loop" do

end
