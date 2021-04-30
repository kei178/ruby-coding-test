require 'spec_helper'
require_relative '../../solutions/best-time-to-buy-and-sell-stock.rb'

RSpec.describe 'max_profit' do
  it 'returns 5' do
    prices = [7, 1, 5, 3, 6, 4]
    expect(max_profit(prices)).to eq(5)
  end
  
  it 'returns 0' do
    prices = [7, 6, 4, 3, 1]
    expect(max_profit(prices)).to eq(0)
  end
end
