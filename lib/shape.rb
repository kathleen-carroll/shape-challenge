class Shape
  attr_reader :name, :dimensions, :area

  def initialize(name, dimensions)
    @name = name.downcase
    @dimensions = dimensions.downcase
    @area = calculate_area
  end

  def calculate_area
    if method("#{@name}_area")
      method("#{@name}_area").call
    else
      "Can't calculate. Please add shape calculation"
    end
  end

  def circle_area
    @area = (Math::PI * (radius ** 2)).round(2)
  end

  def square_area
    @area = (length * width).round(2)
  end

  def rectangle_area
    square_area
  end

  def triangle_area
    # 1/2 base * height
    # equation: s = 1/2 (A + B + C) & Area = sqrt(s(s-a)(s-b)(s-c))
    sum = a + b + c
    s = 0.5 * sum
    value = s * (s - a) * (s - b) * (s - c)

    if value > 0
      @area = Math.sqrt(value)
    elsif a == b && b == c  #equilateral
      @area = (Math.sqrt(3)/4) * (a ** 2)
    else #so the formula doesn't fail
      @area = Math.sqrt(-value)
    end

      @area.round(2)
  end

  def radius
    @dimensions.gsub('radius ', '').to_i
  end

  def length
    @dimensions.split("x")[0].to_i
  end

  def width
    @dimensions.split("x").last.to_i
  end

  def a
    a = side_values["a"].to_i
  end

  def b
    b = side_values["b"].to_i
  end

  def c
    c = side_values["c"].to_i
  end

  def side_values
    side_values = @dimensions.split(" x ").reduce({}) do |hash, dimension|
      hash[dimension[0]] = dimension[-1]
      hash
    end
  end
end
