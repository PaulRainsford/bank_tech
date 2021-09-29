# frozen_string_literal: true

describe Statement do
  describe '#print' do
    it 'prints a statement with one transaction' do
      account_double = double :account, deposit: 10.00, transactions_array: ['20/02/2020 || 10.00 ||  || 10.00']
      statement = Statement.new(account_double)
      expect(statement.print).to eq("date || credit || debit || balance\n20/02/2020 || 10.00 ||  || 10.00")
    end
  end

  it 'prints a statement with no transacctions' do
    account_double = double :account, transactions_array: []
    statement = Statement.new(account_double)
    expect(statement.print).to eq('date || credit || debit || balance')
  end

  it ' prints a statement with multple transactions in reverse order' do
    account_double = double :account, deposit: 10.00, withdraw: 5.00,
                                      transactions_array: ['21/02/2020 || 10.00 ||  || 10.00', '21/02/2020 ||  || 5.00 || 5.00']
    statement = Statement.new(account_double)
    expect(statement.print).to eq("date || credit || debit || balance\n21/02/2020 ||  || 5.00 || 5.00\n21/02/2020 || 10.00 ||  || 10.00")
  end
end
