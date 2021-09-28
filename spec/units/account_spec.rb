require 'account'

describe Account do

  context '#balance' do
    it "should have default balance of zero" do
      expect(subject.balance).to eq(0)
    end
  end

  context '#deposit' do
    it "should allow account holder to deposit funds" do
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end
  end

  context '#withdraw' do
    it "should allow account holder to withdraw funds" do
      subject.deposit(10)
      subject.withdraw(5)
      expect(subject.balance).to eq 5
    end

    it "should raise an error if account holder tries to withdraw amount greater than balance" do
      expect{ subject.withdraw(20) }.to raise_error "Sorry, insufficient funds"
    end
  end

  context "#transaction" do
    it "stores details of the transaction" do
      subject.deposit(10.00)
      expect(subject.last_transaction).to eq("#{Time.new.strftime("%d/%m/%Y")} || 10.00 ||  || 10.00")
    end
  end

  context "#transactions_array" do
    it "contains all the transactions" do
      subject.deposit(10.00)
      subject.withdraw(5.00)
      expect(subject.transactions_array).to eq(["#{Time.new.strftime("%d/%m/%Y")} || 10.00 ||  || 10.00", "#{Time.new.strftime("%d/%m/%Y")} ||  || 5.00 || 5.00"])
    end
  end
      


  












end