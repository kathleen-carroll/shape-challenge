require './lib/shape'

puts "Create Shapes!"

shape_options = ["circle", "square", "rectangle", "triangle"]
@shapes = []

# Creating circles of random radius
5.times do
  num = rand(1..20)
  new_shape = Shape.new('circle', "radius #{num}")
  puts "name: #{new_shape.name}, dimensions: #{new_shape.dimensions}, area: #{new_shape.area}"
  @shapes << new_shape
end

# Creating squares or rectangles
10.times do
  num = rand(1..2)
  shape_name = shape_options[num]

  dimension = rand(1..20)

  if shape_name == 'square'
    dimension2 = dimension
  else
    dimension2 = rand(1..20)
  end


  new_shape = Shape.new(shape_name, "#{dimension} x #{dimension2}")
  puts "name: #{new_shape.name}, dimensions: #{new_shape.dimensions}, area: #{new_shape.area}"
  @shapes << new_shape
end

5.times do
  a = rand(1..5).to_s
  b = rand(1..5).to_s
  c = rand(1..5).to_s

  new_shape = Shape.new('triangle', "a#{a} x b#{b} x c#{c}")
  puts "name: #{new_shape.name}, dimensions: #{new_shape.dimensions}, area: #{new_shape.area}"
  @shapes << new_shape
end
