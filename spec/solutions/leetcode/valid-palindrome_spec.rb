require_relative '../../../solutions/leetcode/valid-palindrome.rb'

RSpec.describe 'is_palindrome' do
  it 'returns true' do
    s = 'A man, a plan, a canal: Panama'
    expect(is_palindrome(s)).to be_truthy
  end

  it 'returns false' do
    s = 'race a car'
    expect(is_palindrome(s)).to be_falsey
  end

  it 'returns false' do
    s = '0P'
    expect(is_palindrome(s)).to be_falsey
  end
end
