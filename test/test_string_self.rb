

require File.dirname(__FILE__) + '/test_helper.rb'

require "test/unit"
class StringSelfTest < Test::Unit::TestCase
  def setup
  end

  def teardown
  end

  def test_1
    expected = "com.vysnu.self_object"
    assert_equal expected, com.vysnu.self_object
  end
end
