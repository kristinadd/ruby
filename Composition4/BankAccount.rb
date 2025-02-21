class BankAccount
  attr_reader :account

  def initialize(account)
    @account = account
  end

  def get_currency
    account.currency
  end

  def get_status
    account.status
  end

  def get_balance
    account.balance
  end

  def get_holder_name
    account.holder_name
  end
end
