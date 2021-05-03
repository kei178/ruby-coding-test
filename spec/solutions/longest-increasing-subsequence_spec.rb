require 'spec_helper'
require_relative '../../solutions/longest-increasing-subsequence.rb'

RSpec.describe 'length_of_lis' do
  it 'returns 4' do
    nums = [10,9,2,5,3,7,101,18]
    expect(length_of_lis(nums)).to eq(4)
  end
  
  it 'returns 4' do
    nums = [0,1,0,3,2,3]
    expect(length_of_lis(nums)).to eq(4)
  end
  
  it 'returns 4' do
    nums = [7,7,7,7,7,7,7]
    expect(length_of_lis(nums)).to eq(1)
  end
end
