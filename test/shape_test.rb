require 'minitest/autorun'
require 'minitest/pride'
require './lib/shape'

class ShapeTest < Minitest::Test
  def setup
    @circle = Shape.new('circle', 'radius 3')
    @square = Shape.new('square', '4 x 4')
    @rectangle = Shape.new('rectangle', '4 x 3')
    @triangle = Shape.new('triangle', 'a3 x b4 x c5')
  end

  def test_it_exists
    assert_instance_of Shape, @circle
  end

  def test_it_has_attributes
    assert_equal 'circle', @circle.name
    assert_equal 'radius 3', @circle.dimensions
  end

  def test_it_can_calculate_area
    assert_equal 28.27, @circle.area
  end

  def test_it_can_be_a_square
    assert_equal 'square', @square.name
    assert_equal '4 x 4', @square.dimensions
    assert_equal 16, @square.area
  end

  def test_it_can_be_a_rectangle
    assert_equal 'rectangle', @rectangle.name
    assert_equal '4 x 3', @rectangle.dimensions
    assert_equal 12, @rectangle.area
  end

  def test_it_can_be_a_triangle
    assert_equal 'triangle', @triangle.name
    assert_equal 'a3 x b4 x c5', @triangle.dimensions
    assert_equal 6, @triangle.area
  end

end
