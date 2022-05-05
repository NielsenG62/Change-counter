require('pry')
require('rspec')
require('coins')

describe('#coin_counter') do
  it('should return two quarters for a value of 50') do
    coin = Coin.new(50)
    expect(coin.coin_counter).to(eq('Quarters: 2'))
  end
  it('should return two quarters and two dimes for 70') do
    coin = Coin.new(70)
    expect(coin.coin_counter).to(eq('Quarters: 2' "\n" 'Dimes: 2'))
  end
  it('should return two quarters and a nickel for 55') do
    coin = Coin.new(55)
    expect(coin.coin_counter).to(eq('Quarters: 2' "\n" 'Nickels: 1'))
  end
  it('should return 4 pennies for 4') do
    coin = Coin.new(4)
    expect(coin.coin_counter).to(eq("\nPennies: 4"))
  end
end