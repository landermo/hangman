class Game
  attr_reader :turns_left

 def initialize
   @board = Array.new 3
   @turns_left = 3
 end

  def take_turn(letter, position)
    @turns_left -= 1
    @board[position - 1] = letter
  end

  def letter_at (position)
    @board[position - 1]
  end

  def show_board

  end
end