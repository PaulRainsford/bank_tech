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













end