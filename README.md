# Bank Tech Test
A tech test using Ruby focused on the production of best practice code, obeying OOd and TDD principles.

## Specification
Build a command line app, operating like a bank account, allowing a user to deposit funds, withdraw funds and see a statement showing the date, amount, and balance of all trancactions.

## Requirements
- You should be able to interact with your code via a REPL like IRB or the    JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria
**Given** a client makes a deposit of 1000 on 10-01-2023
**And** a deposit of 2000 on 13-01-2023
**And** a withdrawal of 500 on 14-01-2023
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Installation
git clone: https://github.com/PaulRainsford/bank_tech.git<br>
cd bank_tech<br>
bundle install<br>

## To run the program eg.
Type: **irb** into terminal to launch IRB<br>
      **require './lib/account.rb'**<br>
      **account = Account.new**<br>
      **account.deposit(50.00)**<br>
      **account.withdraw(30.00)**<br>
      **statement = Statement.new(account)**<br>
      **print statement.print**<br>

![Transaction Example](https://user-images.githubusercontent.com/86072918/135445336-64ec6403-1820-40fb-b3d6-892a922a059a.png)

## User stories
```
As an account holder,
So that I can save money in my bank account, 
I'd like to be able to deposit money.
```
```
As an account holder,
So that I can access money from my bank account, 
I'd like to be able to withdraw money.
```
```
As an account holder,
So that I can review my finances, 
I'd like to be able to print my statement.
```
```
As an account holder,
So that I can see my deposits,
I want to see any deposit as a credit on my statement. 
```
```
As an account holder,
So that I can see my withdrawls,
I want to see any withdrawl as a debit on my statement.
```
```
As an account holder,
So that I can track my balance,
I want to see all transactions to show new balance after completion on my statement.
```
```
As an account holder,
So I know when each transaction happened,
I want transactions on my statement to have the date.
```
```
As an account holder,
So I easily see most recent activity on account,
I want the transactions on statement to be in reverse date order.
```
## Design
I decided on two classes:<br>
Account class<br>
  - A method for deposits
  - A method for Withdrawls
  - A method to handle transactions
  - A method to create the date
Statement class<br>
  - A method to create a statement
  - A method to print the statement

## Testing
You can run the tests by typing the following:
```
rspec
```

## Technologies
- Ruby
- Rspec (testing)
- Rubocop (linting)
- SimplCov (test coverage) 100% coverage
