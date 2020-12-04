class Shape
  attr_reader :name, :dimensions, :area

  def initialize(name, dimensions)
    @name = name
    @dimensions = dimensions #refactor into object or build new class
    @area = calculate_area
  end

  def calculate_area
    # AreaModule.calculate_area(@name)
    if @name == 'circle'
      radius = @dimensions.gsub('radius ', '').to_i
      @area = (Math::PI * (radius ** 2)).round(2) # this could be in abstracted out later
    elsif @name == 'square' || @name == 'rectangle'
      length = @dimensions.split("x")[0].to_i
      width = @dimensions.split("x").last.to_i
      @area = (length * width).round(2)
    elsif @name == 'triangle'
      # a = 0
      # b = 0
      # c = 0
      hash = Hash.new
      # dimension_array = @dimensions.split(" x ")
      @dimensions.split(" x ").each {|dimension| hash[dimension[0]] = dimension[-1] }

      # S = 1/2 (A + B + C)
      # Area = sqrt(s(s-a)(s-b)(s-c))
      a = hash["a"].to_i
      b = hash["b"].to_i
      c = hash["c"].to_i

      sum = a + b + c
      s = 0.5 * sum
      
      @area = Math.sqrt(s * (s - a) * (s - b) * (s - c))

      # require "pry"; binding.pry
    else
      "Can't calculate"
    end
  end
end
