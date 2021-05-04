require 'spec_helper'
require_relative '../../../solutions/leetcode/valid_anagram.rb'

RSpec.describe 'is_anagram' do
  it 'returns true' do
    s = 'anagram'
    t = 'nagaram'
    expect(is_anagram(s, t)).to be_truthy
  end

  it 'returns false' do
    s = 'rat'
    t = 'car'
    expect(is_anagram(s, t)).to be_falsey
  end
end
