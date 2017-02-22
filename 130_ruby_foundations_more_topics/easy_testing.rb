require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new




# class Test < MiniTest::Test
#   def setup
#     #@value = 9
#     # @value = 'XYZ'
#     @value = nil
#     @list = ["xyz"]
#   end

#   def test_odd
#     skip
#     assert(@value.odd?, 'value is not odd')
#   end

#   def test_downcase
#     skip
#     assert_equal('xyz', @value.downcase)
#   end

#   def test_nil
#     assert_equal(nil, @value)
#     # assert_nil(@value)
#   end

#   def test_empty
#     assert_empty(@list)
#     # assert_equal([], @list)
#   end

#   def test_included
#     assert_includes(@list, 'xyz')
#   end

#   def test_hire
#     assert_raises NoExperienceError { employee.hire }
#   end
# end

assert_equals(Numeric, value.class)

assert_kind_of(Numeric, value)

assert_same(list, list.process)

refute_includes(list, 'xyz')