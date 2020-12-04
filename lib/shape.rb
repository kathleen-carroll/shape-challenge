class Shape
  attr_reader :name, :dimensions, :area

  def initialize(name, dimensions)
    @name = name
    @dimensions = dimensions
    @area = calculate_area
  end

  def calculate_area
    if @name == 'circle'
      radius = @dimensions.gsub('radius ', '').to_i
      # require "pry"; binding.pry
    end
  end
end
