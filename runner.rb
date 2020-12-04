require './lib/shape'

puts "Create Shapes!"

shape_options = ["circle", "square", "rectangle", "triangle"]
@shapes = []

5.times do
  num = rand(1..20)
  new_shape = Shape.new('circle', "radius #{num}")
  puts "name: #{new_shape.name}, dimensions: #{new_shape.dimensions}, area: #{new_shape.area}"
  @shapes << new_shape
end
