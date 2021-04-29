require 'spec_helper'
require_relative '../../solutions/longest_repeating_character_replacement.rb'

RSpec.describe 'character_replacement' do
  it 'returns 4' do
    s = 'ABAB'
    k = 2
    expect(character_replacement(s, k)).to eq(4)
  end

  it 'returns 4' do
    s = 'AABABBA'
    k = 1
    expect(character_replacement(s, k)).to eq(4)
  end

   it 'returns 3' do
     s = 'BAAA'
     k = 0
     expect(character_replacement(s, k)).to eq(3)
   end
end
