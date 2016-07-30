class Board
	def initialize
		@board = [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5],
					[5, 6], [6, 7], [7, 8], [8, 9]]
	end

	def print_board
		puts ""
		puts " #{@board[0][1]} | #{@board[1][1]} | #{@board[2][1]} "
		puts "---+---+---"
		puts " #{@board[3][1]} | #{@board[4][1]} | #{@board[5][1]} "
		puts "---+---+---"
		puts " #{@board[6][1]} | #{@board[7][1]} | #{@board[8][1]} "
		puts ""
	end

	def choose_quadrant
		quadrant = -1
		begin
			puts "Where will you place your marker?"
			quadrant  = gets.chomp.to_i - 1
		end until quadrant >= 0 && quadrant < 9
		quadrant
	end

	def place_marker
		begin
			marker = choose_quadrant
		end until @board[marker][1] != ("X" || "O")
		@board[marker] = [marker, "X"]
		print_board
	end
end
