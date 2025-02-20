require_relative 'BankAccount'

class BasicAccount
  def initialize
    @bank_account = BankAccount.new
  end

  def deposit(amount)
    @bank_account.deposit(amount)
  end

  def withdraw(amount)
    @bank_account.withdraw(amount)
  end

  def balance
    @bank_account.balance
  end
end
