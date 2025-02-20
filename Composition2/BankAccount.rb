class BankAccount
  attr_reader :account, :balance

  def initialize(account)
    @account = account
    @balance = account.balance # now which class owns the concept of a balance?
    # the premium account initializes it but BankAccount manitulate it
  end

  # Encapsulation: tell, don't ask
  # 
  # In your current code, BankAccount directly accesses and modifies 
  # PremiumAccount’s @balance via attr_reader and then using 
  # account.balance += amount.
  # 
  # This breaks encapsulation because BankAccount is “asking” 
  # for PremiumAccount’s internal data, then changing it.
  # 
  #Sandi Metz generally recommends telling an object what to do 
  #(e.g., “deposit this amount”) rather than asking for data 
  #to manipulate yourself.

  def deposit(amount)
    account.balance += amount
    # don't manipulate the object, tell it what to do
  end

  def withdraw(amount)
    account.balance -= amount
  end

  # It’s cleaner if PremiumAccount manages its own balance 
  # (deposits, withdrawals, etc.) behind public methods. 
  # That way, BankAccount doesn’t need to know how PremiumAccount
  # stores or updates the balance.
  # 
  #

end


