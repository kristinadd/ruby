class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0.00

    post_initialize
  end

  def post_initialize
    # hook
  end

  def add_money(amount)
    raise NotImplementedError,
    "#{self.class} needs to implement the add_money method."
  end

  def withdraw_money(amount)
    raise NotImplementedError,
    "#{self.class} needs to implement the withdraw_money method"
  end
end
