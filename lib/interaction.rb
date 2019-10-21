require 'account.rb'
require 'transaction.rb'

class Interaction
  attr_reader :account
  attr_reader :date

  def initialize
    @account = Account.new
    @date = '21-10-2019'
    user_prompt
  end

  def user_prompt
    prompt = ''
    until prompt == 'exit' do
      welcometext
      prompt = $stdin.gets.chomp
      deposit if prompt == 'deposit'
      withdrawal if prompt == 'withdrawal'
      #other params to be addded
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

  private

  def welcometext
    puts 'Welcome to MakersBANK'
    puts "Today's date is #{self.date}"
    puts "Please enter 'deposit' to make a deposit"
  end
end
