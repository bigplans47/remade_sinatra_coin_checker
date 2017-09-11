require('rspec')
require('coin_check')


describe(Coin) do
  describe('coin_calculator') do

    it("takes value and outputs coin type of quarter") do
      the_coin = Coin.new()
      expect(the_coin.coin_calculator(25)).to(eq(["Quarter"]))
    end

    it("takes value and outputs coin type of dime") do
      the_coin = Coin.new()
      expect(the_coin.coin_calculator(20)).to(eq(["Dime", "Dime"]))
    end

    it("takes value and outputs coin type of nickel") do
      the_coin = Coin.new()
      expect(the_coin.coin_calculator(15)).to(eq(["Dime", "Nickel"]))
    end

    it("takes the value and outputs the coin type of penny") do
      the_coin = Coin.new()
      expect(the_coin.coin_calculator(3)).to(eq(["Penny", "Penny", "Penny"]))
    end

    it("takes the value and outputs the coin type of all") do
      the_coin = Coin.new()
      expect(the_coin.coin_calculator(81)).to(eq(["Quarter", "Quarter", "Quarter", "Nickel", "Penny"]))
    end

  end
end
