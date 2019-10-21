require './lib/transaction.rb'
describe Transaction do
  it 'initializes with correct data - debit' do
    transaction = Transaction.new(date: '21-10-2019', debit: 500, resulting_balance: 500)
    expect(transaction.date).to eq('21-10-2019')
    expect(transaction.debit).to eq(500)
    expect(transaction.resulting_balance).to eq(500)
  end
  it 'initializes with correct data - credit' do
    transaction = Transaction.new(date: '21-10-2019', credit: 500, resulting_balance: -500)
    expect(transaction.date).to eq('21-10-2019')
    expect(transaction.credit).to eq(500)
    expect(transaction.resulting_balance).to eq(-500)
  end
end
