require 'white_rice'

ingredients = {
  :white_rice => 0.5.recipe,
  :chicken_breast => 1,
  :soy_sauce => 1.tbsp,
  :sherry => 2.tbsp,
  :egg => 1,
  :corn_starch => 1.tbsp
}

if you.like? :onion
  ingredients[:onion] = 1
elsif you.like? :onion_powder
  ingredients[:onion_powder] = 0.5.tsp
end

if you.want?
  # you can add stuff to the white rice just by sticking it in the pot
  # while it cooks
  you.make :white_rice, :with => you.select [:corn, :peas, :chopped_spinach]
else
  you.make :white_rice
end

bowl << :soy_sauce << :sherry << :egg

if ingredients.key? :onion
  you.chop :onion, :finely
  bowl << :onion
elsif ingredients.key? :onion_powder
  bowl << :onion_powder
end

you.mix bowl.contents

you.slice :chicken

bowl << :chicken << :corn_starch

you.mix bowl.contents

pan.element.set_heat :medium

pan << bowl.contents

until pan.contents.cooked?
  you.mix pan.contents
  pan << :water if pan.contents.too_thick?
end

plate << :rice
plate << pan.contents

you.eat
