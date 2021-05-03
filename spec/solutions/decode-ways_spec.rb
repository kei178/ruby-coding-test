require 'spec_helper'
require_relative '../../solutions/decode-ways.rb'

RSpec.describe 'num_decodings' do
  it 'returns 2' do
    s = '12'
    expect(num_decodings(s)).to eq(2)
  end

  it 'returns 3' do
    s = '226'
    expect(num_decodings(s)).to eq(3)
  end

  it 'returns 0' do
    s = '0'
    expect(num_decodings(s)).to eq(0)
  end
  it 'returns 0' do
    s = '06'
    expect(num_decodings(s)).to eq(0)
  end
end
