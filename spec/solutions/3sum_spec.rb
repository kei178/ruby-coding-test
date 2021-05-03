require 'spec_helper'
require_relative '../../solutions/3sum.rb'

RSpec.describe 'three_sum' do
  it 'returns [[-1,-1,2],[-1,0,1]]' do
    nums = [-1,0,1,2,-1,-4]
    expect(three_sum(nums)).to eq([[-1,-1,2],[-1,0,1]])  
  end

  it 'returns []' do
    nums = []
    expect(three_sum(nums)).to eq([])  
  end

  it 'returns []' do
    nums = [0]
    expect(three_sum(nums)).to eq([])  
  end
end
