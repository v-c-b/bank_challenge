describe 'Making a deposit' do
  it 'increases the balance correctly' do
    allow($stdin).to receive(:gets).and_return('next', 'deposit', '500', 'exit')
    session = Interaction.new
    expect(session.date).to eq(Date.new(2012,1, 11))
    expect(session.account.current_balance).to eq(500)
  end
  it 'correctly records the transaction in the ledger' do
    allow($stdin).to receive(:gets).and_return('deposit', '500', 'exit')
    session = Interaction.new
    expect(session.account.ledger[0].resulting_balance).to eq(500)
    expect(session.account.ledger[0].date).to eq(Date.new(2012,1, 10))
    expect(session.account.ledger[0].debit).to eq(500)
  end
end
