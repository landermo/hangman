Dictionary = ["banana", "jazz", "something"]

class Game
  attr_reader :turns_left

 def initialize
   @guesses = []
   @word = Dictionary.sample
 end

  def show_guesses
    puts @guesses.join(',')
  end

  def prompt
    puts "The answer is #{@word}"
    print 'Player: Guess a letter >'
    letter = gets.chomp.downcase.strip
    if @word.include? letter
        puts 'Correct'
    else puts 'No'
    end
    @guesses.push letter
  end



end



g = Game.new
  loop do
    g.prompt
    g.show_guesses
  end






#   def take_turn(letter)
#     if turns_left != 0
#
#       @word.each do |x|
#       if @word.include? letter
#         good_guesses.push letter
#         return good_guesses
#       else
#         @turns_left -= 1
#         bad_guesses.push letter
#         return '_'
#       end
#     end
#     end
#   end
#
#   def word
#     @word = word
#   end
#
#
#
#
#
#
#   def lose
#     lose_game = false
#     if @turns_left == 0
#       lose_game = true
#     end
#     lose_game
#   end
#
#   def player_wins
#     if @good_guesses == @word
#       player_wins = true
#     end
#     player_wins
#     end
#
#   def letter_at (position)
#     @word[position]
#   end
#
#
#   def show_board
#     "
#     #{letter_at} 1 #{letter_at} 2 #{letter_at} 3
#       ---------      --------       --------
#     "
#   end
# end
#
