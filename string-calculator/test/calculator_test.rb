$LOAD_PATH << "./lib"
require "test/unit"
require "calculator"

class CalculatorTest < Test::Unit::TestCase

  def setup
    @calculator = Calculator.new
  end

  def test_create
    assert_not_nil @calculator
  end

  def test_should_return_0_on_empty_string
    assert_equal @calculator.add(""), 0
  end

  def test_should_return_number_with_number
    assert_equal @calculator.add("1"), 1
    assert_equal @calculator.add("5"), 5
  end

  def test_should_return_sum_with_two_numbers_comma_separated
    assert_equal @calculator.add("2,3"), 5
  end

  def test_should_return_sum_with_n_numbers_comma_separated
    assert_equal @calculator.add("2,3,4"), 9
  end

end