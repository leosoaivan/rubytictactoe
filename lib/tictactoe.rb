require_relative './board.rb'
require_relative './player.rb'
require_relative './game.rb'

x = Game.new(Player.new("Player 1", "X"),Player.new("Player 2", "O"))

x.game_start
