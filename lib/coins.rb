class Coin 
  
  def initialize(number)
    @number = number
  end

  def coin_counter
    change = @number
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    output = ''
    until change == 0
      if change / 25 >= 1
        quarters += (change / 25)
        change -= (25 * (change / 25))
        output += "Quarters: #{quarters}"
      elsif change / 10 >= 1
        dimes += (change / 10)
        change -= (10 * (change / 10))
        output +=  "\nDimes: #{dimes}"
      elsif change / 5 >= 1
        nickels += (change / 5)
        change -= (5 * (change / 5))
        output +=  "\nNickels: #{nickels}"
      elsif change / 1 >= 1
        pennies += (change / 1)
        change -= (change / 1)
        output +=  "\nPennies: #{pennies}"
      end
    end
    output
  end
end
