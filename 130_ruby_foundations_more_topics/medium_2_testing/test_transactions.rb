require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def setup
    @cash_register = CashRegister.new(100)
    @transaction = Transaction.new(6)
    
  end

  def test_prompt_for_payment
    input = StringIO.new('6\n')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(6, @transaction.amount_paid)
  end
end