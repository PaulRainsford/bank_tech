require './lib/account.rb'
require './lib/statement.rb'

describe 'Account and Statement' do
  it "makes deposit, withdrawl and prints statement of transactions in reverse order" do
    account = Account.new
    account.deposit(10.00)
    account.withdraw(5.00)
    statement = Statement.new(account)
    expect(statement.print).to eq("date || credit || debit || balance\n#{Time.new.strftime("%d/%m/%Y")} || || 5.00 || 5.00\n#{Time.new.strftime("%d/%m/%Y")} || 10.00 ||  || 5.00")
  end
end