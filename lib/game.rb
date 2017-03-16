require_relative './board.rb'

Player = Struct.new(:name, :marker)

class Game
  attr_accessor :player_one, :player_two, :board, :turns

  def initialize(args)
    @player_one = Player.new(nil, "X")
    @player_two = Player.new(nil, "O")
    @board = args[:board]
    @turns = 0
  end

  def game_start
    @board.clear
    start_message
    name_players
    @board.print_board
    game_loop
    end_message
    restart_query
  end

  private

    def start_message
      system "clear"
      print "Welcome to Ruby Tic-Tac-Toe!\n"
      print "Player 1 is \"X\", and Player 2 is \"O\".\n\n"
    end

    def name_players
      print "Player 1, what is your name: "
      @player_one.name = gets.chomp
      print "Player 2, what is your name: "
      @player_two.name = gets.chomp
    end
    
    def game_loop
      begin
        add_turn
        place_marker
        @board.print_board
      end until @turns == 9 || @board.won?
    end

    def add_turn
      @turns += 1
    end

    def place_marker
      begin
        quadrant = choose_quadrant
      end until quadrant_unoccupied?(quadrant)
      @board.cell[quadrant] = "#{current_player.marker}"
    end
    
    def choose_quadrant
      begin
        print "Where will you place your marker, #{current_player.name}? "
        quadrant = gets.chomp.to_i - 1
      end until quadrant.between?(0, 8)
      quadrant
    end

    def quadrant_unoccupied?(quadrant)
      true if @board.cell[quadrant].is_a?(Integer)
    end

    def current_player
      @turns.even? ? @player_two : @player_one
    end

    def end_message
      if @board.won?
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
