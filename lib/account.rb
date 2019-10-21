class Account
  attr_reader :current_balance, :ledger

  def initialize
    @current_balance = 0
    @ledger = []
  end

  def deposit(date:, amount:)
    @current_balance += amount
    @ledger.push(Transaction.new(date: date, debit: amount, resulting_balance:@current_balance))
  end

  def withdrawal(date:, amount:)
    @current_balance -= amount
    @ledger.push(Transaction.new(date: date, credit: amount, resulting_balance:@current_balance))
  end
end
