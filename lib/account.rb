class Account

  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail "Sorry, insufficient funds" if @balance < amount
    @balance -= amount
  end






end