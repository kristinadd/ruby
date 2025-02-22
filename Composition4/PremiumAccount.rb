class PremiumAccount
  attr_reader :balance, :status, :currency, :holder_name 

  def initialize(name, balance)
    @balance = balance + 50
    @status = "active"
    @currency = "EUR"
    @holder_name = name
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
