require 'minitest/autorun'
require 'minitest/pride'
require './lib/shape'

class ShapeTest < Minitest::Test
  def setup
    @circle = Shape.new('circle', 'radius 3')
  end

  def test_it_exists
    assert_instance_of Shape, @circle
  end

  def test_it_has_attributes
    assert_equal 'circle', @circle.name
    assert_equal 'radius 3', @circle.dimensions
  end
  
end
