describe 'Making a deposit' do
  it 'increases the balance correctly' do
    allow($stdin).to receive(:gets).and_return('deposit', '500', 'exit')
    # Interaction.any_instance.stub(gets: 'deposit')
    session = Interaction.new
    # expect(session.account.current_balance).to eq 0
    # allow_any_instance_of(Interaction).to receive(:gets).and_return('deposit')
    #allow($stdin).to receive(:gets).and_return('deposit')
    # allow($stdin).to receive(:gets).and_return('21-10-2019')
    expect(session.date).to eq('21-10-2019')
    # allow($stdin).to receive(:gets).and_return(500)
    expect(session.account.current_balance).to eq(500)
  end
  it 'correctly records the transaction in the ledger' do
    allow($stdin).to receive(:gets).and_return('deposit', '500', 'exit')
    session = Interaction.new
    expect(session.account.ledger[0].resulting_balance).to eq(500)
    expect(session.account.ledger[0].date).to eq('21-10-2019')
    expect(session.account.ledger[0].debit).to eq(500)
  end
end
describe 'Making a withdrawal' do
  it 'decreases the balance correctly' do
    allow($stdin).to receive(:gets).and_return('withdrawal', '500', 'exit')
    # Interaction.any_instance.stub(gets: 'deposit')
    session = Interaction.new
    # expect(session.account.current_balance).to eq 0
    # allow_any_instance_of(Interaction).to receive(:gets).and_return('deposit')
    #allow($stdin).to receive(:gets).and_return('deposit')
    # allow($stdin).to receive(:gets).and_return('21-10-2019')
    expect(session.date).to eq('21-10-2019')
    # allow($stdin).to receive(:gets).and_return(500)
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
