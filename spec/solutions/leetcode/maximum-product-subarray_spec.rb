require 'spec_helper'
require_relative '../../../solutions/leetcode/maximum-product-subarray.rb'

RSpec.describe 'max_product' do
  it 'returns 6' do
    sums = [2, 3, -2, 4]
    expect(max_product(sums)).to eq(6)  
  end

  it 'returns 0' do
    sums = [-2, 0, -1]
    expect(max_product(sums)).to eq(0)
  end

  it 'returns 2' do
    sums = [0, 2]
    expect(max_product(sums)).to eq(2)
  end

  it 'returns 54' do
    sums = [-1,-2,-9,-6]
    expect(max_product(sums)).to eq(108)
  end
end
