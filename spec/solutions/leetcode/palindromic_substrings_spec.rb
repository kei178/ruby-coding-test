require 'spec_helper'
require_relative '../../../solutions/leetcode/palindromic_substrings.rb'

RSpec.describe 'count_substrings' do
  it 'returns 3' do
    s = 'abc'
    expect(count_substrings(s)).to eq(3)
  end

  it 'returns 6' do
    s = 'aaa'
    expect(count_substrings(s)).to eq(6)
  end
end
