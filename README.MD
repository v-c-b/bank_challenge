# Bank challenge

### Initial thoughts
- Components
a) handling interactions (actions - deposit, withdrawal, statement, move date forward)
b) Account back-end (owner)
      Transaction ledger (reverse order)
      Owner
      initiate Deposit transaction
      initiate Withdrawal transaction
      current balance
c) Transaction
      stores date, credit, debit, result balance, (account ID? transaction ID?)
d) Date (singleton)


User story 1: Making a a deposit of 1000 increases the balance by 1000
