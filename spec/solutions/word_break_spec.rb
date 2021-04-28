require 'spec_helper'
require_relative '../../solutions/word_break.rb'

RSpec.describe 'word_break' do
  it 'returns true' do
    s = 'leetcode'
    word_list = ['leet', 'code']
    expect(word_break(s, word_list)).to be_truthy
  end

  it 'returns true' do
    s = 'applepenapple'
    word_list = ['apple', 'pen']
    expect(word_break(s, word_list)).to be_truthy
  end

  it 'returns false' do
    s = 'catsandog'
    word_list = ['cats','dog','sand','and','cat']
    expect(word_break(s, word_list)).to be_falsey
  end
end
