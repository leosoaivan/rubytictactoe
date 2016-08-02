class Game
  attr_reader :player_one, :player_two

  def initialize
    puts "Welcome to Ruby Tic-Tac-Toe!"
    @player_one = Player.new("Player 1", "X")
    @player_two = Player.new("Player 2", "O")
    @@turns = 0
    game_start
  end

  def game_start
    @board = Board.new
    @board.print_board
    game_loop
  end

  def game_loop
    begin
      place_marker
      @board.print_board
    end until @@turns == 10 || @board.won_game?
    puts "#{current_player.name} has won!"
    @board.print_board
  end

  def place_marker
    @@turns += 1
    begin
      marker = choose_quadrant
    end until @board.cell[marker][1] != ("X" || "O")
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
end

class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

class Board
  attr_accessor :cell

  def initialize
    @cell = [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5],
            [5, 6], [6, 7], [7, 8], [8, 9]]
  end

  def print_board
    puts ""
    puts " #{@cell[0][1]} | #{@cell[1][1]} | #{@cell[2][1]} "
    puts "---+---+---"
    puts " #{@cell[3][1]} | #{@cell[4][1]} | #{@cell[5][1]} "
    puts "---+---+---"
    puts " #{@cell[6][1]} | #{@cell[7][1]} | #{@cell[8][1]} "
    puts ""
  end

  def won_game?
    case
    when @cell[0][1] == (@cell[1][1] && @cell[2][1])
      return TRUE
    when @cell[3][1] == (@cell[4][1] && @cell[5][1])
      return TRUE
    when @cell[6][1] == (@cell[7][1] && @cell[8][1])
      return TRUE
    when @cell[0][1] == (@cell[3][1] && @cell[6][1])
      return TRUE
    when @cell[1][1] == (@cell[4][1] && @cell[7][1])
      return TRUE
    when @cell[2][1] == (@cell[5][1] && @cell[8][1])
      return TRUE
    when @cell[0][1] == (@cell[4][1] && @cell[8][1])
      return TRUE
    when @cell[2][1] == (@cell[4][1] && @cell[6][1])
      return TRUE
    else
      return FALSE
    end
  end

end

x = Game.new
