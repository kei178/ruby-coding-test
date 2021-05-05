require 'spec_helper'
require_relative '../../../solutions/leetcode/longest-palindromic-substring.rb'

RSpec.describe 'longest_palindrome' do
  it 'returns bab' do
    s = 'babad'
    expect(longest_palindrome(s)).to eq('bab')  
  end

  it 'returns bb' do
    s = 'cbbd'
    expect(longest_palindrome(s)).to eq('bb')  
  end

  it 'returns a' do
    s = 'a'
    expect(longest_palindrome(s)).to eq('a')  
  end

  it 'returns a' do
    s = 'ac'
    expect(longest_palindrome(s)).to eq('a')  
  end

  it 'returns ccc' do
    s = 'ccc'
    expect(longest_palindrome(s)).to eq('ccc')  
  end  
end
