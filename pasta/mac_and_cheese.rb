ingredients = {
  :macaroni => 3.cups,
  :milk => 2.cups,
  :flour => 0.25.cups,
  :salt => 0.75.tsp,
  :garlic_powder => 0.75.tsp,
  :grated_cheese => 1.cup
}

# first the mac
pot << :water
pot.element.set_heat :high

you.wait until water.boiling?

pot << :macaroni

you.stir pot.contents

# now the cheese
small_pot << :milk << :flour << :garlic_powder << :salt

you.stir small_pot.contents, :with => :whisk

small_pot.element.set_heat :medium_low

you.stir small_pot.contents until small_pot.contents.thick?

small_pot.element.set_heat :off
small_pot << :cheese
you.stir until cheese.melted?

# now mix the two

you.wait until pot.contents.cooked?

pot.contents.strain

pot << small_pot.contents

you.stir pot.contents

you.eat
