require 'spec_helper'
require_relative '../../solutions/longest_substring_without_repeating_characters.rb'

RSpec.describe 'length_of_longest_substring' do
  it 'returns 3' do
    s = 'abcabcbb'
    expect(length_of_longest_substring(s)).to eq(3)
  end

  it 'returns 3' do
    s = 'bbbbb'
    expect(length_of_longest_substring(s)).to eq(1)
  end

  it 'returns 3' do
    s = 'pwwkew'
    expect(length_of_longest_substring(s)).to eq(3)
  end

  it 'returns 0' do
    s = ''
    expect(length_of_longest_substring(s)).to eq(0)
  end
end
