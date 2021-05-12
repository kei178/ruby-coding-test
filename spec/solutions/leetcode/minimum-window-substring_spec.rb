require 'spec_helper'
require_relative '../../../solutions/leetcode/minimum-window-substring.rb'

RSpec.describe 'min_window' do
  it 'returns BANC' do
    s = "ADOBECODEBANC"
    t = "ABC"
    expect(min_window(s, t)).to eq('BANC')  
  end

  it 'returns a' do
    s = "a"
    t = "a"
    expect(min_window(s, t)).to eq('a')  
  end

  it 'returns ""' do
    s = "a"
    t = "aa"
    expect(min_window(s, t)).to eq('')  
  end

  it 'returns a' do
    s = "ab"
    t = "a"
    expect(min_window(s, t)).to eq('a')  
  end

  it 'returns ""' do
    s = "ab"
    t = "A"
    expect(min_window(s, t)).to eq('')  
  end

  it 'returns aa' do
    s = "aa"
    t = "aa"
    expect(min_window(s, t)).to eq('aa')  
  end
end
