class Account
  attr_reader :current_balance, :ledger

  def initialize
    @current_balance = 0
    @ledger = []
  end

  def deposit(date:, amount:)
    @current_balance += amount
    @ledger.push(Transaction.new(date: date, debit: amount, resulting_balance: @current_balance))
  end

  def withdrawal(date:, amount:)
    @current_balance -= amount
    @ledger.push(Transaction.new(date: date, credit: amount, resulting_balance: @current_balance))
  end

  def transaction_statement
    print_statement_header
    @ledger.each do |transaction|
      puts "#{transaction.date.ljust(12)} #{transaction.credit.to_s.ljust(12)} #{transaction.debit.to_s.ljust(12)} #{transaction.resulting_balance.to_s.ljust(12)}"
    end
    print_statement_footer
  end
  
  private

  def print_statement_header
    puts ""
    puts "----- End of statement -----"
  end

  def print_statement_footer
    puts ''
    puts '----- End of statement -----'
  end
end
