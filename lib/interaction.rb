require './lib/account.rb'
require './lib/transaction.rb'

class Interaction
  attr_reader :account
  attr_reader :date

  def initialize
    @account = Account.new
    @date = '01-01-2019'
    # clean-up before submit
    prompt_user_for_transaction
  end

  def prompt_user_for_transaction
    prompt = ''
    until prompt == 'exit' do
      welcometext
      prompt = $stdin.gets.chomp
      deposit if prompt == 'deposit'
      withdrawal if prompt == 'withdrawal'
      transaction_statement if prompt == 'statement'
      # other params to be addded - needs refactoring
    end
  end

  def deposit
    prompt_and_set_date
    puts 'Enter amount to deposit'
    deposit_amount = $stdin.gets.chomp
    @account.deposit(date: date, amount: deposit_amount.to_i)
  end

  def withdrawal
    prompt_and_set_date
    puts 'Enter amount to withdraw'
    withdrawal_amount = $stdin.gets.chomp
    @account.withdrawal(date: date, amount: withdrawal_amount.to_i)
  end

  def transaction_statement
    @account.transaction_statement
  end

  private

  def welcometext
    puts 'Welcome to MakersBANK'
    puts "Today's date is #{@date}"
    puts "Please enter 'deposit' to make a deposit"
  end

  def prompt_and_set_date
    puts 'Enter the date for the transaction in DD-MM-YYYY format'
    @date = $stdin.gets.chomp
  end
end
