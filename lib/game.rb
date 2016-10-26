require 'board.rb'
require 'player.rb'

class Game
  def initialize
    @player_one = Player.new("Player 1", "X")
    @player_two = Player.new("Player 2", "O")
    @@turns = 0
    game_start
  end

  def game_start
    start_message
    @board = Board.new
    @board.print_board
    game_loop
  end

  def start_message
    puts "Welcome to Ruby Tic-Tac-Toe!"
    puts "Player 1 is \"X\", and Player 2 is \"O\"."
  end

  def game_loop
    begin
      place_marker
      @board.print_board
    end until @@turns == 9 || @board.won_game? == TRUE
    end_message
  end

  def place_marker
    @@turns += 1
    begin
      marker = choose_quadrant
    end until @board.cell[marker][1] != "X" && @board.cell[marker][1] != "O"
    @board.cell[marker] = [marker, "#{current_player.marker}"]
  end

  def choose_quadrant
    begin
      puts "Where will you place your marker, #{current_player.name}?"
      quadrant  = gets.chomp.to_i - 1
    end until quadrant >= 0 && quadrant < 9
    quadrant
  end

  def current_player
    @@turns % 2 == 0 ? @player_two : @player_one
  end

  def end_message
  	if @board.won_game? == TRUE
  	  puts " #{current_player.name} has won!"
  	else
  	  puts "The game has ended in a draw!"
  	end
    restart_query
  end

  def restart_query
    puts "Would you like to play again? Y/N"
    decision = gets.chomp.upcase
    case decision
    when "Y"
      game_restart
    when "N"
      puts "Goodbye!"
    else
      puts "I didn't get that. Please try again."
      restart_query
    end
  end

  def game_restart
  	@@turns = 0
  	game_start
  end

end

x = Game.new
