require 'spec_helper'
require_relative '../../solutions/product_of_array_except_self.rb'

RSpec.describe 'product_except_self' do
  it 'returns [24,12,8,6]' do
    nums = [1,2,3,4]
    expect(product_except_self(nums)).to eq([24,12,8,6])  
  end

  it 'returns [0,0,9,0,0]' do
    nums = [-1,1,0,-3,3]
    expect(product_except_self(nums)).to eq([0,0,9,0,0])  
  end

  it 'returns [0,0,0,0,0]' do
    nums = [-1,1,0,-3,0]
    expect(product_except_self(nums)).to eq([0,0,0,0,0])  
  end
end
