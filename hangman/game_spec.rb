require 'rspec'
require_relative 'Game'



describe Game do

  it 'can take one turn' do
    x = Game.new

    # I take one turn ...

    x.prompt

    expect(x.turns_left).to eq 6

  end

  it 'can place a letter on the board' do
    x = Game.new

    x.take_turn('t')

    expect(x.good_guesses).to eq 't'
  end



  it 'can display a guess' do
    x = Game.new

    x.take_turn('t')

    expect(@good_guesses).to eq 't'
  end

  it 'can display blanks'

  it 'can fill in the blanks'

end