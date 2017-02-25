require 'minitest/autorun'
require 'minitest/reporters'

MiniTest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @cash_register = CashRegister.new(100)
    @transaction = Transaction.new(6)
    @transaction.amount_paid = 10
  end

  def test_accept_money
    previous_amount = @cash_register.total_money
    @cash_register.accept_money(@transaction)
    current_amount = @cash_register.total_money
    assert_equal(previous_amount + @transaction.amount_paid, current_amount)
  end

  def test_change
    assert_equal(4, @cash_register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $6.\n") { @cash_register.give_receipt(@transaction) }
  end
end