




class Game
      @@empty = [[[1],[],[]],
        [[],[],[]],
      [[],[],[]]]



  def initialize
    @won = false

      @current = @@empty
      @current_piece = "X"
      @other_piece = "O"
  end

  def run

    while !check() do

      show_board()
      x = true

      @current_piece, @other_piece =  @other_piece, @current_piece
      num = 1000
      while x != true do
        begin
          num = gets.chomp.to_i
        rescue
          puts "enter a number between 1 and 9"
        end
        if num > 1 && num < 9 then
          x = false
        end
    end
        turn(@current_piece, num)

    end



  end

  def show_board
      @current.each do |i|
        p i
      end
    end


  protected
  def check
    return false

  end
  def turn


  end
end



while true do

  puts "press y to start a game ctrl + c to end"
  answer = gets.chomp

  if answer == "y" then
    current_game = Game.new
    current_game.run
  end
end
