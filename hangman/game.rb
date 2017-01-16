Dictionary = ["banana", "jazz", "something"]

class Game

  def initialize
    @guesses = []
    @word = Dictionary.sample
    @turns_left = 7
  end

  def show_guesses
    puts @guesses.join(',')
    puts "You have #{@turns_left} turns left"
  end

  def prompt
    puts "The answer is #{@word}"
    print 'Player: Guess a letter >'
    letter = gets.chomp.downcase.strip
    if @word.include? letter
      puts 'Correct'
    else
      puts 'No'
      @turns_left -= 1
    end
    @guesses.push letter
  end

  def out_of_turns
    @turns_left == 0
  end

  def show_board
    board = []
    @word.chars.each do |char|
      if @guesses.include? char
        board.push char
      else
        board.push '_'
      end
    end
    board.join(' ')
  end
end


g = Game.new
  until g.out_of_turns do
    g.prompt
    puts g.show_board
    g.show_guesses
    end

#
#   def player_wins
#     if @good_guesses == @word
#       player_wins = true
#     end
#     player_wins
#     end
