ingredients = {
  :white_rice => 1.cup,
  :celery => (1..2).sticks,
  :cayenne => you.decide,
  :pepper => you.decide
}

if you.have? :chicken_stock
  ingredients[:chicken_stock] = 2.cups
  ingredients[:salt] = 2.tsp if not chicken_stock.salted?
else
  ingredients[:water] = 2.cups
  ingredients[:chicken_bouillon] = 1.cube
end

pot << ((:chicken_stock and :salt) or (:water and :chicken_bouillon))
pot << :celery << :pepper << :cayenne

if you.like? :onion
  ingredients[:onion] = 0.5
  ingredients[:olive_oil] = 1.tbsp

  you.chop :onion

  pan << :olive_oil << :onion
  pan.element.set_heat :medium

  you.wait until onion.soft?

  pot << pan.contents
end

pot.element.set_heat :high

when pot.boiling? do
  pot.element.set_heat :low
end

you.wait 20.minutes

pot.remove_from_heat

you.wait 5.minutes

you.eat
