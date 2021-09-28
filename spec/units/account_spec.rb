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











end