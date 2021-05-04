# frozen_string_literal: true

require 'spec_helper'
require_relative '../../../solutions/leetcode/maximum_subarray.rb'

RSpec.describe 'max_sub_array' do
  it 'returns 6' do
    nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    expect(max_sub_array(nums)).to eq(6)
  end

  it 'returns 1' do
    nums = [1]
    expect(max_sub_array(nums)).to eq(1)
  end

  it 'returns 23' do
    nums = [5, 4, -1, 7, 8]
    expect(max_sub_array(nums)).to eq(23)
  end
end
