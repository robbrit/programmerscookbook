ingredients = {
  :eggs => 2,
  :spinach => 2.tbsps,
  :milk => 2.tbsps
}

extras = {
  :grated_cheese => 0.25.cups,
  :onion => 3.tbsps,
  :green_onion => 3.tbsp,
  :tabasco => (1/8).tsp,
  :peppers => 3.tbsp
}

pan.element.set_heat :medium

bowl << :eggs << :spinach << :milk << extras

bowl.contents.mix

pan << bowl.contents

you.wait until pan.contents.mostly_cooked?

spatula.move :around => :edge_of_pan

pan.contents.flip!

you.wait until pan.contents.cooked?

pan.element.set_heat :off

you.eat
