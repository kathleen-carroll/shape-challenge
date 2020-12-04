require 'minitest/autorun'
require 'minitest/pride'
require './lib/shape'

class ShapeTest < Minitest::Test
  def setup
    @circle = Shape.new('circle')
  end

  def test_it_exists
    assert_instance_of Shape, @circle
  end
end
