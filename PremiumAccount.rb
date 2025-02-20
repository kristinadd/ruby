require_relative 'BankAccount'

class PremiumAccount<BankAccount
  attr_reader :withdraw_tax

  def post_initialize
    @balance = balance + 100.00
    @withdraw_tax = 0.00
  end

  def add_money(amount)
    if amount > 0.00
      @balance = balance + amount

      return balance
    end
  end

  def withdraw_money(amount)
    if @balance >= amount
      @balance = @balance - amount

      return @balance
    else
      puts "Unsufficient balance."
    end
  end
  
end
