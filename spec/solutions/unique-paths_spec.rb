require 'spec_helper'
require_relative '../../solutions/unique-paths.rb'

RSpec.describe 'unique_paths' do
  it 'returns 28' do
    m = 3
    n = 7
    expect((unique_paths(m, n))).to eq(28)
  end
  it 'returns 3' do
    m = 3
    n = 2
    expect((unique_paths(m, n))).to eq(3)
  end
  it 'returns 28' do
    m = 7
    n = 3
    expect((unique_paths(m, n))).to eq(28)
  end
  it 'returns 28' do
    m = 3
    n = 3
    expect((unique_paths(m, n))).to eq(6)
  end
end
