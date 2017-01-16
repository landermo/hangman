class Player
    attr_reader :letter

    def initialize letter
      @letter = letter
    end

  def prompt
    puts 'Player: Guess a letter'
    @guess = gets.chomp.downcase.strip
  end
end

