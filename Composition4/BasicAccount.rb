class BasicAccount
  attr_reader :balance, :status, :currency, :holder_name 

  def initialize(name)
    @balance = 0
    @status  = "active"
    @currency = "USD"
    @holder_name = name
  end
end
