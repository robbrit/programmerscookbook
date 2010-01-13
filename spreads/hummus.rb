require 'food_processor'

ingredients = {
  :chick_peas => 1.can,
  :lemons => 1,
  :olive_oil => 2.tbsp,
  :garlic => 2.cloves
}

you.chop :garlic, :finely or you.press :garlic
you.juice :lemon

bowl << :all
food_processor.stir until bowl.contents == :creamy

if bowl.contents == :too_dry
  bowl << :more_olive_oil
  food_processor.stir
end

you.eat :with => :pita_bread
