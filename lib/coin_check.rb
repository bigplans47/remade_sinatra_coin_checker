class Coin

  def initialize(user_input)
    @user_input = user_input
  end

  def coin_calculator()
    quarter = 25
    dime = 10
    nickel = 5
    penny = 1
    the_coin_array = []
    money_left = @user_input.to_i
    while (money_left >= 25)
      money_left = money_left - 25
      the_coin_array.push("Quarter")
    end
    while (money_left >= 10)
      money_left = money_left - 10
      the_coin_array.push("Dime")
    end
    while (money_left >= 5)
      money_left = money_left - 5
      the_coin_array.push("Nickel")
    end
    while (money_left >= 1)
      money_left = money_left - 1
      the_coin_array.push("Penny")
    end
    return the_coin_array
  end
end
