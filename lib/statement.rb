# frozen_string_literal: true

class Statement
  def initialize(account = Account.new)
    @statement = account.transactions_array
  end

  def print
    @statement.append('date || credit || debit || balance').reverse.join("\n")
  end
end
