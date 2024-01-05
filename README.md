﻿# Tic-Tac-Toe-in-Ruby


 this is tic tac toe in ruby cli


 I really enjoyed making this project, it was part of a web dev bootcamp called https://www.theodinproject.com/dashboard

# fun facts

it is written in object oriented programming.

it uses the protected keyword to protect it's methods.

it uses a multidimensional array to store the board of the tic tac toe


# favorite one liners I wrote

These two lines use the ternary operator to assign the values needed to place the "X" or "O" piece in the multi dimensional array which is the board.

denom = num > 6 ? 2 : ( num > 3 ? 1 : 0)

numerator = num % 3 == 0 ? 2 : (num == 2 || num == 5 || num == 8 ? 1 : 0)

ultimately, if num == 4, demon will == 1 and numerator will == 0.

then I can look up the place in the array like this:

(@current is a instance varaible that is the board)

@current[denom][numerator] = @current_piece



moving on to the next one


      @current_piece, @other_piece =  @other_piece, @current_piece

all this does is flip the X and O pieces so I can keep assigning them to the board without having to do something much more complicated. This line exists in a while loop.


Here's a longer one!

    assertion = ["X","O"]
   assertion.each do |a|
      (0..2).each do |denom|

        if @current[denom][0] == a && @current[denom][1] == a && @current[denom][2] == a then
          @current_winner = a
          return true
        end
      end
    end



this implements the horizontal win checking for the game. There is also one for vertical and diagonal, but for brevity I didn't include them here.

Basically, it uses "X" and "O" in the loop and checks @current[0][0] @current[0][1] and @current[0][2] if they all equal one of the pieces, and ends the game if it doesn. It will check for all possible horizontal win conditions for both pieces with this code. 

Notice that it uses a each loop of (0..2) with denom as the value. it will go through @current[1][0] and etc and @current[2][0] and the other values and if it finds a win for either player it will end the game and the winner will be shown in the main method.


Thanks for reading!
