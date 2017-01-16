# Pick a random word
# Display a collection of blanks for the letters
# Ask the user to guess a letter
# Show all the correct and incorrect guesses the user has made
# Tell the player they won if they get all the letters in the word
# Tell the player they lose after some number of bad guesses
# Display a useful message if a user guesses the same letter twice (and not count off for the second guess)

g = Game.new
@word = 'Cat'


until g.player_wins || g.lose
  g.show_board
  g.prompt
  g.take_turn (letter)
end

