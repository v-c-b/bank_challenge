# Bank challenge

### Use cases
- Allow user to make deposit transactions on her account
- Allow user to make withdrawal transactions on her account
- Record transaction details
- Print account statement with balance and transaction history

### Installation
- Clone repo
- run 'bundle install' (only required for testing purposes)
- load lib/interaction.rb into Ruby interpreter
- follow the users prompts
- run 'rspec' to run tests

### Technical design
- Used ruby as 1) mostly back-end features required and 2) more robust testing suite available
- Interaction class manages user interaction and triggers actions on Account
- Account class provides the main account features: maintain current balance, execute and store deposit/withdrawal transactions and print out account statement
- Transaction class provides records of single transactions

### Acceptance criteria

Given a client makes
- deposit of 1000 on 10-01-2012
- deposit of 2000 on 13-01-201
- withdrawal of 500 on 14-01-2012

When she prints her bank statement, then she would see:

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
