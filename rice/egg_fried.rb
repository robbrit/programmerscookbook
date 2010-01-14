require "white_rice"

ingredients = {
  :white_rice => 1.recipe,
  :olive_oil => 2.tbsp,  # you can use vegetable oil if you like
  :garlic => 1.clove,
  :soy_sauce => 2.tbsp,
  :eggs => 2,

  # use whatever vegetables you like here,
  # this is a list of suggestions
  :corn => 0.5.cups,
  :peas => 0.5.cups,
  :carrots => 1,
  :snow_peas => 1.cup
}

if you.like? :garlic, :a_lot
  ingredients[:garlic] += 1.clove
end

if not you.have? :fresh_ginger
  ingredients[:ginger_powder] = 2.tsp
else
  ingredients[:ginger] = 1.tsp
end

you.make :white_rice

you.chop :garlic, :finely or you.press :garlic
you.chop :ginger, :finely if you.have? :fresh_ginger

pan << :olive_oil << :garlic << :ginger << :soy_sauce
pan.element.set_heat :medium_low

you.wait 1.minute

while pot.contains? :rice
  pan << pot.remove(:rice, :amount => 1.wooden_spoonful)
  you.stir
end

pan << :vegetables

eggs.each do |egg|
  pan << egg
  you.stir
end

you.wait until egg.cooked

you.eat
