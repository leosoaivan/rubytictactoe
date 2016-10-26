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
    when @cell[0][1] == @cell[1][1] && @cell[0][1] == @cell[2][1]
      return TRUE
    when @cell[3][1] == @cell[4][1] && @cell[3][1] == @cell[5][1]
      return TRUE
    when @cell[6][1] == @cell[7][1] && @cell[6][1] == @cell[8][1]
      return TRUE
    when @cell[0][1] == @cell[3][1] && @cell[0][1] == @cell[6][1]
      return TRUE
    when @cell[1][1] == @cell[4][1] && @cell[1][1] == @cell[7][1]
      return TRUE
    when @cell[2][1] == @cell[5][1] && @cell[8][1] == @cell[2][1]
      return TRUE
    when @cell[0][1] == @cell[4][1] && @cell[0][1] == @cell[8][1]
      return TRUE
    when @cell[2][1] == @cell[4][1] && @cell[2][1] == @cell[6][1]
      return TRUE
    else
      return FALSE
    end
  end

end
