require 'spec_helper'
require_relative '../../../solutions/leetcode/house-robber-ii.rb'

RSpec.describe 'rob' do
  it 'returns 3' do
    nums = [2, 3, 2]
    expect(rob(nums)).to eq(3)
  end

  it 'returns 4' do
    nums = [1, 2, 3, 1]
    expect(rob(nums)).to eq(4)
  end

  it 'returns 0' do
    nums = [0]
    expect(rob(nums)).to eq(0)
  end

  it 'returns 340' do
    nums = [200,3,140,20,10]
    expect(rob(nums)).to eq(340)
  end
end
