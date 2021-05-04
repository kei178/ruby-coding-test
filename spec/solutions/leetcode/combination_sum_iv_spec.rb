require 'spec_helper'
require_relative '../../../solutions/leetcode/combination_sum_iv.rb'

RSpec.describe 'combination_sum4' do
  it 'returns 7' do
    nums = [1, 2, 3]
    target = 4
    expect(combination_sum4(nums, target)).to eq(7)
  end

  it 'returns 0' do
    nums = [9]
    target = 3
    expect(combination_sum4(nums, target)).to eq(0)
  end
end
