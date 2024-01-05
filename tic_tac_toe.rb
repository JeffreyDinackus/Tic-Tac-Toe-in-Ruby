




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
    reset()
  end

  def run
    puts "welcome to TIC TAC TOE."
    puts "choose the corresponding spot number when it is your turn to place a piece. the current turn will be outputted."
          puts "if the piece isn't being placed, it's probably already been taken."
      reset()
      p @empty
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
        if num >= 1 && num <= 9 then

          y = turn(num)

          if y == true then
            x = false
            break
          end

        end
      end
      # current piece is not handed to turn, as it is availible already.


    end

    puts "#{@current_winner} WINS. GAME OVER." # may need to be swapped for the other piece.

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


  def reset

      @won = false
      @@empty = [


      [[],[],[]],

        [[],[],[]],
      [[],[],[]]]
      @current = @@empty
      @current_piece = "O"
      @other_piece = "X"
      @current_winner = "NO WINNER"
  end

  def check
    assertion = ["X","O"]
    # not a bad way of doing it
   assertion.each do |a|
      (0..2).each do |denom|

        if @current[denom][0] == a && @current[denom][1] == a && @current[denom][2] == a then
          @current_winner = a
          return true
        end
      end
    end

   assertion.each do |a|
      (0..2).each do |denom|

        if @current[denom][0] == a && @current[denom][1] == a && @current[denom][2] == a then
          @current_winner = a
          return true
        end
      end
    end

    return false
  end
  def turn(num)


    # this sets the line number in the array for current. it is required to make the correct spot findable in the current array.
    denom = num > 6 ? 2 : ( num > 3 ? 1 : 0)
    numerator = num % 3 == 0 ? 2 : (num == 2 || num == 5 || num == 8 ? 1 : 0)


    # 1 2 3
    # 4 5 6
    # 7 8 9
    if @current[denom][numerator] == [] then
      @current[denom][numerator] = @current_piece
      return true
    else
      return false
    end
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
