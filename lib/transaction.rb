class Transaction
  attr_reader :date, :credit, :debit, :resulting_balance

  def initialize (date:, credit: 0, debit: 0, resulting_balance:)
    @date = date
    @credit = credit
    @debit = debit
    @resulting_balance = resulting_balance
  end
end
