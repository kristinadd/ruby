class PremiumAccount
  attr_reader :balance

  def initialize()
    @balance = 100
  end

end

# The key idea from Sandi Metz is that each object
# should manage its own data and provide an 
# explicit public API (like deposit and withdraw).
# 
#
# Sandi Metz generally advocates a “Tell, Don’t Ask” 
# approach, meaning each object should manage its 
# own data and be told what to do rather than 
# having its data extracted and manipulated externally.
# 
#
# What’s happening here?
# BankAccount constructor pulls out the balance from the 
# passed-in PremiumAccount and stores it in @balance.
# deposit / withdraw methods in BankAccount then do 
# account.balance += amount, effectively setting 
# PremiumAccount’s @balance from the outside.
# This breaks encapsulation because BankAccount has 
# to know how PremiumAccount stores its balance. If 
# PremiumAccount changes its internal representation of 
# balance (e.g., storing multiple currencies or adding 
# transaction fees), you’d have to change BankAccount as well.
# 
#
# A More “Tell, Don’t Ask” Approach
# Instead of pulling out balance and modifying it, you can 
# push deposit/withdraw responsibilities down to PremiumAccount. 
# That way, PremiumAccount encapsulates its data and is 
# responsible for updating it. BankAccount just tells 
# PremiumAccount what to do.