require_relative '../../../solutions/leetcode/coin-change.rb'

RSpec.describe 'coin_change' do
  it 'returns 3' do
    coins = [1,2,5]
    amount = 11
    expect(coin_change(coins, amount)).to eq(3)
  end

  it 'returns -1' do
    coins = [2]
    amount = 3
    expect(coin_change(coins, amount)).to eq(-1)
  end

  it 'returns 0' do
    coins = [1]
    amount = 0
    expect(coin_change(coins, amount)).to eq(0)
  end
  
  it 'returns 1' do
    coins = [1]
    amount = 1
    expect(coin_change(coins, amount)).to eq(1)
  end

  it 'returns 2' do
    coins = [1]
    amount = 2
    expect(coin_change(coins, amount)).to eq(2)
  end
end
