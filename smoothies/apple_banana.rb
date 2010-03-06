require 'food_processor' or 'blender'

ingredients = {
  :banana => 1,
  :apple => 1,
  :milk => (2..4).cups,
  :cinnamon => you.decide
}

banana.slice
apple.slice

if you.have? :blender
  blender << :apple << :banana << :milk << :cinnamon
  blender.blend
else
  tall_plastic_dish << :apple << :banana << :milk << :cinnamon
  food_processor.stir until tall_plastic_dish.contents.smooth?
end

you.eat
makes 2.servings
