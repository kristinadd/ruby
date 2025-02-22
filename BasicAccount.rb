require_relative 'BankAccount'

class BasicAccount<BankAccount
  attr_reader :withdraw_tax

  def post_initialize
    @withdraw_tax = 1.00
  end

  def add_money(amount)
    if amount > 0.00
      @balance = @balance + amount

      return balance
    end
  end

  def withdraw_money(amount)
    total = @withdraw_tax + amount

    if @balance >= total
      @balance = @balance - total

      return @balance
    else
      puts "Insufficient balance."
    end
  end
end
