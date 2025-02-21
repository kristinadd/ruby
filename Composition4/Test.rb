require_relative 'BasicAccount'
require_relative 'BankAccount'
require_relative 'PremiumAccount'

class Test
  premium = PremiumAccount.new("Kristy")
  basic = BasicAccount.new("Bobby")

  account = BankAccount.new(premium)

  puts account.get_currency
  puts account.get_status
  puts account.get_balance
  puts account.get_holder_name
end
