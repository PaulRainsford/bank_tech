require 'statement'

class Account

  attr_reader :balance, :last_transaction, :transactions_array
  
  def initialize(statement = Statement)
    @balance = 0
    @transactions_array = []
    
  end

  def deposit(amount)
    date = create_date
    @balance += amount
    amount = '%.2f'%amount
    transaction(date, amount, nil, balance)
  end

  def withdraw(amount)
    fail "Sorry, insufficient funds" if @balance < amount
    date = create_date
    @balance -= amount
    amount = '%.2f'%amount
    transaction(date, nil, amount, balance)
  end

  def transaction(date, deposit, withdraw, balance)
    @last_transaction = "#{date} || #{deposit} || #{withdraw} || #{'%.2f'%balance}"
    @transactions_array << @last_transaction
  end

  def create_date
    Time.new.strftime("%d/%m/%Y")
  end
  




end