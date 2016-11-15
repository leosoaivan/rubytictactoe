require_relative './board.rb'
require_relative './player.rb'

class Game
  attr_accessor :player_one, :player_two, :board, :turns

  def initialize
    @player_one = Player.new("Player 1", "X")
    @player_two = Player.new("Player 2", "O")
    @board = Board.new
    @turns = 0
  end

  def game_start
    start_message
    @board.print_board
    game_loop
    end_message
    restart_query
  end

  def start_message
    puts "Welcome to Ruby Tic-Tac-Toe!"
    puts "Player 1 is \"X\", and Player 2 is \"O\"."
  end

  def game_loop
    begin
      place_marker
      @board.print_board
    end until @turns == 9 || @board.won? == TRUE
  end

  def place_marker
    begin
      quadrant = choose_quadrant
    end until @board.cell[quadrant] != "X" && @board.cell[quadrant] != "O"
    @board.cell[quadrant] = "#{current_player.marker}"
  end

  def add_turn
    @turns += 1
  end

  def choose_quadrant
    begin
      print "Where will you place your marker, #{current_player.name}? "
      quadrant = gets.chomp.to_i - 1
    end until quadrant.between?(0, 8)
    quadrant
  end

  def current_player
    @turns % 2 == 0 ? @player_two : @player_one
  end

  def end_message
    if @board.won? == TRUE
      puts "#{current_player.name} has won!"
    else
      puts "The game has ended in a draw!"
    end
  end

  def restart_query
    print "Would you like to play again? Y/N? "
    decision = gets.chomp.upcase
    case decision
    when "Y"
      system "clear"
      game_restart
    when "N"
      puts "Goodbye!"
    else
      puts "I didn't get that. Please try again."
      restart_query
    end
  end

  def reset_counter
    @turns = 0
  end

  def game_restart
    reset_counter
    game_start
  end
end
