ingredients = {
  :potatoes => 3,
  (:olive_oil or :vegetable_oil or :butter) => 3.tbsp,
  :chili_powder => you.decide, # I like to use a fair bit of chili powder,
                               # but it is slightly spicy so you may not
  :oregano => you.decide,
  :salt => you.decide
}

unless you.like? :potato_skins
  you.peel :potatoes
end

you.slice :potatoes, :into => 1.cm.cubes

pan << :oil
pan.element.set_heat :medium

you.wait 1.minute

pan << :sliced_potatoes

you.stir until potatoes.slightly_coated?

pan << :chili_power << :oregano << :salt

10.minutes do
  # you have to stir constantly or the potatoes get stuck to the
  # bottom of the pan, or they might burn
  you.stir :constantly, :with => :wooden_spoon

  break if potatoes.cooked?
end

you.wait until not potatoes.hot?
you.eat
