require_relative 'BankAccount'
require_relative 'BasicAccount'
require_relative 'PremiumAccount'

class Test
  # Usage example:
  basic = BasicAccount.new
  basic.deposit(100)
  puts "Basic balance: #{basic.balance}"  # => 100

  premium = PremiumAccount.new
  premium.deposit(200)
  puts "Premium balance: #{premium.balance}"  # => 200
end
