describe 'Making a withdrawal' do
  it 'decreases the balance correctly' do
    allow($stdin).to receive(:gets).and_return('withdrawal', '500', 'exit')
    session = Interaction.new
    expect(session.date).to eq('21-10-2019')
    expect(session.account.current_balance).to eq(-500)
  end
  it 'correctly records the transaction in the ledger' do
    allow($stdin).to receive(:gets).and_return('withdrawal', '500', 'exit')
    session = Interaction.new
    expect(session.account.ledger[0].resulting_balance).to eq(-500)
    expect(session.account.ledger[0].date).to eq('21-10-2019')
    expect(session.account.ledger[0].credit).to eq(500)
  end
end
