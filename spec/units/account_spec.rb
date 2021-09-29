# frozen_string_literal: true

require 'account'

describe Account do
  let(:insufficient_funds) {"Sorry, insufficient funds"}
  context '#balance' do
    it 'should have default balance of zero' do
      expect(subject.balance).to eq(0)
    end
  end

  context '#deposit' do
    it 'should allow account holder to deposit funds' do
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end

    it 'should return message after depositing funds' do
      subject.deposit(10)
      expect(subject.deposit(10)).to eq '10.00 deposited'
    end
  end

  context '#withdraw' do
    it 'should allow account holder to withdraw funds' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.balance).to eq 5
    end

    it 'should return message after withdrawing funds' do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.withdraw(5)).to eq '5.00 withdrawn'
    end

    it 'should return error message if account holder tries to withdraw amount greater than balance' do
      expect(subject.withdraw(20)).to eq(insufficient_funds)
    end
  end

  context '#transaction' do
    it 'stores details of the transaction' do
      subject.deposit(10.00)
      expect(subject.last_transaction).to eq("#{Time.new.strftime('%d/%m/%Y')} || 10.00 ||  || 10.00")
    end
  end

  context '#transactions_array' do
    it 'contains all the transactions' do
      subject.deposit(10.00)
      subject.withdraw(5.00)
      expect(subject.transactions_array).to eq(["#{Time.new.strftime('%d/%m/%Y')} || 10.00 ||  || 10.00",
                                                "#{Time.new.strftime('%d/%m/%Y')} ||  || 5.00 || 5.00"])
    end
  end
end
