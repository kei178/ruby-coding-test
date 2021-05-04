require 'spec_helper'
require_relative '../../../solutions/leetcode/house_robber.rb'

RSpec.describe 'rob' do
  it 'returns 4' do
    nums = [1, 2, 3, 1]
    expect(rob(nums)).to eq(4)
  end

  it 'returns 12' do
    nums = [2, 7, 9, 3, 1]
    expect(rob(nums)).to eq(12)
  end
end
