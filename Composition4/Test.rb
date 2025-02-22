require_relative 'BasicAccount'
require_relative 'BankAccount'
require_relative 'PremiumAccount'

class Test
    basic = BasicAccount.new("John", 100.00)
    account = BankAccount.new(basic)
    puts account.get_balance

    premium = PremiumAccount.new("Jane", 200.00)
    account = BankAccount.new(premium)
    puts account.get_balance


end
