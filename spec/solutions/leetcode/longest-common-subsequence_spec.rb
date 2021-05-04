require 'spec_helper'
require_relative '../../../solutions/leetcode/longest-common-subsequence.rb'

RSpec.describe 'longest_common_subsequence' do
  it 'returns 3' do
    text1 = "abcde"
    text2 = "ace" 
    expect(longest_common_subsequence(text1, text2)).to eq(3)
  end

  it 'returns 3' do
    text1 = "abc"
    text2 = "abc" 
    expect(longest_common_subsequence(text1, text2)).to eq(3)
  end
  
  it 'returns 3' do
    text1 = "abc"
    text2 = "def" 
    expect(longest_common_subsequence(text1, text2)).to eq(0)
  end
end
