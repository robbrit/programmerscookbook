require 'kimchi'
require 'white_rice'

ingredients = {
  :white_rice => 1.recipe(2.people),
  :kimchi => (5..7).pieces,
  :onion => 0.25,
  :eggs => 2,
  (:olive_oil or :peanut_oil) => 2.tbsp,
  :sesame_seeds => 1.tsp
}

you.chop :onion

pan << :oil << :onion
pan.element.set_heat :medium

you.wait until onion.soft?

pan << :kimchi << :sesame_seeds

you.wait 3.minutes

pan << :rice

you.stir pan.contents

pan << :eggs

you.stir pan.contents

you.wait until egg.cooked?

you.eat
