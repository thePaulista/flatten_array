gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'joshcheekflattenarray'

class FlattenMyArrayTest < Minitest::Test

  def test_it_has_a_flatten_array_method
    a = FlattenMyArray.new
    assert a.respond_to?(:my_flatten)
  end

  def test_array_can_take_an_array_value
    a = FlattenMyArray.new

    assert_equal [2], a.my_flatten([2])
  end

  def test_array_can_have_a_nested_array
    a = FlattenMyArray.new

    assert_equal [1,[23]], a.my_flatten([1,[23]])
  end


  def test_it_flattens_the_aray

    a = FlattenMyArray.new
    flat = a.my_flatten([2,[34]])
    assert_equal [2, 3, 4], flat
  end

end
