




class Game
      @@empty = [


      [[],[],[]],

        [[],[],[]],
      [[],[],[]]]

    @@filled_board =[


      [[1],[2],[3]],

        [[4],[5],[6]],
      [[7],[8],[9]]]

  def initialize
    @won = false

      @current = @@empty
      @current_piece = "O"
      @other_piece = "X"
  end

  def run

    while !check() do

      show_board()
      x = true

      @current_piece, @other_piece =  @other_piece, @current_piece
      num = 1000
      while x == true do
        begin
          puts "It is #{@current_piece}'s turn"
          num = gets.chomp.to_i
        rescue
          puts "enter a number between 1 and 9"
        end
        if num > 1 && num < 9 then
          x = false
          turn(num)
        end
      end
      # current piece is not handed to turn, as it is availible already.


    end



  end

  def show_board
puts "Match up the number with the spot you want to place your piece."
@@filled_board.each do |i|
        p i
      end
      puts "-----------Current Board-------------"
      @current.each do |i|
        p i
      end
    end


  protected
  def check
    return false

  end
  def turn(num)
    p num
    p @current_piece

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
