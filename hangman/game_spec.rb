require 'rspec'
require_relative 'Game'

describe Game do

  it 'can take one turn' do
    x = Game.new

    # I take one turn ...

    x.take_turn('t', 3)

    expect(x.turns_left).to eq 2

  end

  skip 'can place a letter on the board' do
    x = Game.new

    x.take_turn('t', 3)

    # I see the C on the board (at 3?)
    expect(x.letter_at 3).to eq 'C'
  end



  it 'can display a guess'

  it 'can display blanks'

  it 'can fill in the blanks'

end