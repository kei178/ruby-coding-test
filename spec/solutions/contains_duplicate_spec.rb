# frozen_string_literal: true

require 'spec_helper'
require_relative '../../solutions/contains_duplicate.rb'

RSpec.describe 'contains_duplicate' do
  context '[1, 2, 3, 1]' do
    it 'returns TRUE' do
      nums = [1, 2, 3, 1] 
      expect(contains_duplicate(nums)).to eq(true)
    end     
  end

  context '[1, 2, 3, 4]' do
    it 'returns FALSE' do
      nums = [1, 2, 3, 4]
      expect(contains_duplicate(nums)).to eq(false)
    end
  end
  
  context '[1,1,1,3,3,4,3,2,4,2]' do
    it 'returns TRUE' do
      nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
      expect(contains_duplicate(nums)).to eq(true)
    end
  end
end
