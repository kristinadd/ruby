require_relative 'BankAccount'
require_relative 'PremiumAccount'

class Test
  premium = PremiumAccount.new
  account = BankAccount.new(premium)

  account.deposit(50)
end
