class Shape
  attr_reader :name, :dimensions, :area

  def initialize(name, dimensions)
    @name = name
    @dimensions = dimensions #refactor into object or build new class
    @area = calculate_area
  end

  def calculate_area
    method("#{@name}_area").call
    # AreaModule.calculate_area(@name)
    # if @name == 'circle'
    #   circle_area
    #   # radius = @dimensions.gsub('radius ', '').to_i
    #   # @area = (Math::PI * (radius ** 2)).round(2) # this could be in abstracted out later
    # elsif @name == 'square' || @name == 'rectangle'
    #   square_area
    #   # length = @dimensions.split("x")[0].to_i
    #   # width = @dimensions.split("x").last.to_i
    #   # @area = (length * width).round(2)
    # elsif @name == 'triangle'
    #   triangle_area
    #   # a = 0
    #   # b = 0
    #   # c = 0
    #   # hash = Hash.new
    #   # # dimension_array = @dimensions.split(" x ")
    #   # @dimensions.split(" x ").each {|dimension| hash[dimension[0]] = dimension[-1] }
    #   #
    #   # # S = 1/2 (A + B + C)
    #   # # Area = sqrt(s(s-a)(s-b)(s-c))
    #   # a = hash["a"].to_i
    #   # b = hash["b"].to_i
    #   # c = hash["c"].to_i
    #   #
    #   # sum = a + b + c
    #   # s = 0.5 * sum
    #   #
    #   # @area = Math.sqrt(s * (s - a) * (s - b) * (s - c))
    #
    #   # require "pry"; binding.pry
    # else
    #   "Can't calculate"
    # end
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
    side_values ||= @dimensions.split(" x ").reduce({}) do |hash, dimension|
      hash[dimension[0]] = dimension[-1]
      hash
    end
  end

  def circle_area
    @area = (Math::PI * (radius ** 2)).round(2)
  end

  def square_area
    # length = dimensions.split("x")[0].to_i
    # width = dimensions.split("x").last.to_i
    @area = (length * width).round(2)
  end

  def rectangle_area
    square_area
  end

  def triangle_area
    # side_values = @dimensions.split(" x ").reduce({}) do |hash, dimension|
    #   hash[dimension[0]] = dimension[-1]
    #   hash
    # end

    # a = side_values["a"].to_i
    # b = side_values["b"].to_i
    # c = side_values["c"].to_i

    # S = 1/2 (A + B + C)
    # Area = sqrt(s(s-a)(s-b)(s-c))
    sum = a + b + c
    s = 0.5 * sum

    @area = Math.sqrt(s * (s - a) * (s - b) * (s - c))
  end
end
