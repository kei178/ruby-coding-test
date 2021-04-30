require 'spec_helper'
require_relative '../../solutions/jump-game.rb'

RSpec.describe 'can_jump' do
  it 'returns true' do
    nums = [2,3,1,1,4]
    expect(can_jump(nums)).to eq(true) 
  end
  
  it 'returns false' do
    nums = [3,2,1,0,4]
    expect(can_jump(nums)).to eq(false)
  end
end
