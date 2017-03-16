class Board
  attr_accessor :cell

  def initialize
    @cell = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def print_board
    puts ""
    puts " #{@cell[0]} | #{@cell[1]} | #{@cell[2]} "
    puts "---+---+---"
    puts " #{@cell[3]} | #{@cell[4]} | #{@cell[5]} "
    puts "---+---+---"
    puts " #{@cell[6]} | #{@cell[7]} | #{@cell[8]} "
    puts ""
  end

  def won?
    case
    when [@cell[0], @cell[1], @cell[2]].uniq.length == 1
      return true
    when [@cell[3], @cell[4], @cell[5]].uniq.length == 1
      return true
    when [@cell[6], @cell[7], @cell[8]].uniq.length == 1
      return true
    when [@cell[0], @cell[3], @cell[6]].uniq.length == 1
      return true
    when [@cell[1], @cell[4], @cell[7]].uniq.length == 1
      return true
    when [@cell[2], @cell[5], @cell[8]].uniq.length == 1
      return true
    when [@cell[0], @cell[4], @cell[8]].uniq.length == 1
      return true
    when [@cell[2], @cell[4], @cell[6]].uniq.length == 1
      return true
    else
      return false
    end
  end

  def clear
    @cell = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
  
end
