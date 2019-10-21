describe Interaction do
  it 'triggers account setup' do
    allow($stdin).to receive(:gets).and_return('exit')
    session = Interaction.new
    expect(session.account).to be_an_instance_of(Account)
  end
end
