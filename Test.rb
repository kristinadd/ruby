require_relative 'BankAccount'
require_relative 'BasicAccount'
require_relative 'PremiumAccount'

class Test
  basic_account = BasicAccount.new
  puts basic_account.balance
  puts basic_account.withdraw_tax

  puts basic_account.add_money(100)
  puts basic_account.withdraw_money(20)

end
