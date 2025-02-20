class BankAccount

   def initialize(account)
     @account = account
   end

   def deposit(amount)
     @account.deposit(amount)
     puts "Delegating to the specialized class"
   end
   
end
