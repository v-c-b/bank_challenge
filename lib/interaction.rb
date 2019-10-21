require './lib/account.rb'
require './lib/transaction.rb'
require 'date'

class Interaction
  attr_reader :account
  attr_reader :date

  def initialize
    @account = Account.new
    @date = Date.new(2012,1, 10)
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
      move_date_forward if prompt == 'next'
      # other params to be addded - needs refactoring
    end
  end

  def deposit
    puts 'Enter amount to deposit'
    deposit_amount = $stdin.gets.chomp
    @account.deposit(date: date, amount: deposit_amount.to_i)
  end

  def withdrawal
    puts 'Enter amount to withdraw'
    withdrawal_amount = $stdin.gets.chomp
    @account.withdrawal(date: date, amount: withdrawal_amount.to_i)
  end

  def transaction_statement
    @account.transaction_statement
  end

  def move_date_forward
    @date += 1
  end

  private

  def welcometext
    puts 'Welcome to MakersBANK'
    puts "Today's date is #{@date}"
    puts "Please enter 'deposit' to make a deposit"
    puts "Please enter 'withdrawal' to make a withdrawal"
    puts "Please enter 'statement' to see your statement"
    puts "Please enter 'next' to see move the date forward by a day"
    puts "Please enter 'exit' to stop"
  end
end
