require_relative 'prime-finder'

describe "prime_factors" do
  it 'correctly returns prime factors' do
    expect(prime_factors(10)).to eq [2,5]
  end

  it 'returns only the number if a number is prime' do
    expect(prime_factors(13)).to eq [13]
  end

  it 'works for very large numbers' do
    expect(prime_factors(600851475143)).to eq [71, 839, 1471, 6857]
  end
end