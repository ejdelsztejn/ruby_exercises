VALUES = {
  penny: 1,
  nickel: 5,
  dime: 10,
  quarter: 25,
  dollar: 100
}

class Wallet
  attr_reader :cents, :money_array
  def initialize
    @money_array = []
    @cents = 0
  end

  def <<(cent)
    @money_array << cent
    @cents = money_array.inject(0) {|result, element| result += VALUES[element]}
  end

  def take(*money)
    money.each do |cent|
      if money_array.include?(cent)
        @money_array.delete_at(money_array.index(cent))
        @cents -= VALUES[cent]
      end
    end
  end
end
