describe Account do
  it 'has a starting balane of 0' do
    account = Account.new
    expect(account.current_balance).to eq(0)
  end
  it 'increase balance with a deposit' do
    account = Account.new
    account.deposit(date: '21-10-2019', amount: 500)
    expect(account.current_balance).to eq(500)
    expect(account.ledger[0]).to be_an_instance_of Transaction
  end
  it 'decreases balance with a withdrawal' do
    account = Account.new
    account.withdrawal(date: '21-10-2019', amount: 500)
    expect(account.current_balance).to eq(-500)
    expect(account.ledger[0]).to be_an_instance_of Transaction
  end
end
