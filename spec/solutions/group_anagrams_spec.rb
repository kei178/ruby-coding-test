require 'spec_helper'
require_relative '../../solutions/group_anagrams.rb'

RSpec.describe 'group_anagrams' do
  it 'returns [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]' do
    strs = ['eat', 'tea', 'tan', 'ate', 'nat', 'bat']
    expect(group_anagrams(strs)).to eq([['eat', 'tea', 'ate'], ['tan', 'nat'], ['bat']])
  end

  it 'returns [[""]]' do
    strs = ['']
    expect(group_anagrams(strs)).to eq([['']])
  end

  it 'returns [["a"]]' do
    strs = ['a']
    expect(group_anagrams(strs)).to eq([['a']])
  end

  it 'returns [["a"], [""]]' do
    strs = ['a', '']
    expect(group_anagrams(strs)).to eq([['a'], ['']])
  end
end
