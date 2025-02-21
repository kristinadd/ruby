class PremiumAccount
  attr_reader :balance, :status, :currency, :holder_name 

  def initialize(name)
    @balance = 50.00
    @status = "active"
    @currency = "EUR"
    @holder_name = name
  end
end
