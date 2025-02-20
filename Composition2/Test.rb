require_relative 'BankAccount'
require_relative 'BasicAccount'
require_relative 'PremiumAccount'

class Test
  premium = PremiumAccount.new
  account = BankAccount.new(premium)

  puts account.balance
end
