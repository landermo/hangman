require 'rspec'
require_relative 'Game'



describe Game do

  it 'can take one turn' do
    x = Game.new

    # I take one turn ...

    x.take_turn('t')

    expect(x.turns_left).to eq 5

  end

  it 'can place a letter on the board' do
    x = Game.new

    x.take_turn('t')

    expect(x.letter_at 3).to eq 't'
  end



  it 'can display a guess' do
    x = Game.new

    x.take_turn('t')


    expect(guesses).to eq 't'
  end

  it 'can display blanks'

  it 'can fill in the blanks'

end