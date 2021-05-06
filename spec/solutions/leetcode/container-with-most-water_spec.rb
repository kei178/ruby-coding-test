require 'spec_helper'
require_relative '../../../solutions/leetcode/container-with-most-water.rb'

RSpec.describe 'max_area' do
  it 'retunrs 49' do
    height = [1,8,6,2,5,4,8,3,7]
    expect(max_area(height)).to eq(49)
  end

  it 'retunrs 1' do
    height = [1,1]
    expect(max_area(height)).to eq(1)
  end

  it 'retunrs 16' do
    height = [4,3,2,1,4]
    expect(max_area(height)).to eq(16)
  end

  it 'retunrs 2' do
    height = [1,2,1]
    expect(max_area(height)).to eq(2)
  end

  it 'returns 24' do
    height = [1,3,2,5,25,24,5]
    expect(max_area(height)).to eq(24)
  end
end
