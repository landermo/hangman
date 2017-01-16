class Game
  attr_reader :turns_left
  attr_accessor :guesses

 def initialize
   @word = ['cat']
   @turns_left = 6
   @good_guesses = []
   @bad_guesses = []
   #@letters_remaining = @guesses[3]
 end


  def take_turn(letter)
    if turns_left != 0

      @word.each do |x|
      if @good_guesses.include? letter
        @good_guesses.push letter
        return @good_guesses
      else
        @turns_left -= 1
        @bad_guesses.push letter
        return '_'
      end
    end
    end
  end





  def lose
    lose_game = false
    if @turns_left == 0
      lose_game = true
    end
    lose_game
  end

  def player_wins
    if @good_guesses == @word
      player_wins = true
    end
    player_wins
    end

  def letter_at (position)
    @word[position]
  end


  def show_board
    "
    #{letter_at} 1 #{letter_at} 2 #{letter_at} 3
      ---------      --------       --------
    "
  end
end

