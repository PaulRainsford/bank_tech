# frozen_string_literal: true

require_relative 'statement'

class Account
  attr_reader :balance, :last_transaction, :transactions_array

  def initialize(_statement = Statement)
    @balance = 0
    @transactions_array = []
  end

  def deposit(amount)
    date = create_date
    @balance += amount
    amount = '%.2f' % amount
    transaction(date, amount, nil, balance)
    "#{amount} deposited"
  end

  def withdraw(amount)
    return 'Sorry, insufficient funds' if amount > @balance

    date = create_date
    @balance -= amount
    amount = '%.2f' % amount
    transaction(date, nil, amount, balance)
    "#{amount} withdrawn"
  end

  def transaction(date, deposit, withdraw, balance)
    @last_transaction = "#{date} || #{deposit} || #{withdraw} || #{'%.2f' % balance}"
    @transactions_array << @last_transaction
  end

  def create_date
    Time.new.strftime('%d/%m/%Y')
  end
end
