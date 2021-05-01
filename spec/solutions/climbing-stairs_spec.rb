require 'spec_helper'
require_relative '../../solutions/climbing-stairs.rb'

RSpec.describe 'climb_stairs' do
  it 'returns 2' do
     n = 2
     expect(climb_stairs(n)).to eq(2)  
  end
 
  it 'returns 3' do
     n = 3
     expect(climb_stairs(n)).to eq(3)
  end
end
