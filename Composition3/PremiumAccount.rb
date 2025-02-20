class PremiumAccount
  attr_accessor :balance

  def initialize()
    @balance = 100
    @spacial_emoji = "🍉"
  end

  def deposit(amount)
    self.balance = balance + amount
    puts "Amount was deposited"
  end

  def withdraw(amount)
    balance -= amount
  end

end


# Even if you've added attr_accessor :balance, and the 
# 
# writing:
# "balance = balance + amount"       inside your method
# 
# it doesnt work as you expect. In Ruby, when you use an 
# assignment without an explicit receiver, like balance = ..., 
# Ruby creates a new local variable named balance instead of 
# calling the setter method generated by attr_accessor.

# To invoke the setter method, you must explicitly specify the receiver (in this case, self).