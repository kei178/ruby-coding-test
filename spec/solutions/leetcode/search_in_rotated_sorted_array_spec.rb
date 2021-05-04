require 'spec_helper'
require_relative '../../../solutions/leetcode/search_in_rotated_sorted_array.rb'

RSpec.describe 'search' do
  it 'returns 4' do
    nums = [4,5,6,7,0,1,2]
    target = 0
    expect(search(nums, target)).to eq(4)
  end
  
  it 'returns -1' do
    nums = [4,5,6,7,0,1,2]
    target = 3
    expect(search(nums, target)).to eq(-1)
  end
 
  it 'returns -1' do
    nums = [1]
    target = 0
    expect(search(nums, target)).to eq(-1)
  end
end
