Dictionary = ["banana", "jazz", "something"]

class Game
  attr_reader :word

  def initialize
    @guesses = []
    # @word = Dictionary.sample
    @turns_left = 7

    contents = File.read '/usr/share/dict/words'
    words = contents.split
    good_words = words.select do |w|
      4 <= w.length && w.length <= 9 && w.downcase == w
    end
    @word = good_words.sample
  end

  def show_guesses
    puts @guesses.join(',')
    puts "You have #{@turns_left} turns left"
  end

  def prompt
    # puts "The answer is #{@word}"
    print 'Player: Guess a letter > '
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

  def player_wins
    @word.chars.all? do |letter|
      @guesses.include? letter
    end
  end

end


g = Game.new
  until g.out_of_turns || g.player_wins do
    puts g.show_board
    g.prompt
    g.show_guesses
  end

puts "The answer was #{g.word}"