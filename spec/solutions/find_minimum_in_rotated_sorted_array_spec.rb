require 'spec_helper'
require_relative '../../solutions/find_minimum_in_rotated_sorted_array.rb'

RSpec.describe 'find_min' do
  it 'returns 1' do
    nums = [3,4,5,1,2]
    expect(find_min(nums)).to eq(1)  
  end

  it 'returns 0' do
    nums = [4,5,6,7,0,1,2]
    expect(find_min(nums)).to eq(0)  
  end

  it 'returns 11' do
    nums = [11,13,15,17]
    expect(find_min(nums)).to eq(11)  
  end
end
