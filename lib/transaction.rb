class Transaction
  attr_reader :date, :credit, :debit, :resulting_balance

  def initialize(date:, credit: '', debit: '', resulting_balance:)
    @date = date
    @credit = credit
    @debit = debit
    @resulting_balance = resulting_balance
  end
end
