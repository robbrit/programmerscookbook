ingredients = {
  # I usually use 1/2 cup of rice for each person,
  # use less if you don't eat much, more if you eat lots
  :white_rice => (num_people * 0.5).cups,
  # always use twice the amount of water as rice
  :water      => num_people.cups
}

pot << :white_rice
pot << :water

if pot.water.depth < 1.cm
  pot = you.get_smaller_pot
end

pot.element.set_heat :high

stir = 
  if pot.non_stick?
    wooden_spoon
  else
    fork
  end

while not pot.boiling
  # note that stir() gets any stuck rice
  # off the bottom of pot
  stir.stir
  you.wait 1.minute
end

if pot.boiling
  pot.element.set_heat :low
  pot.cover
end

you.wait 12.minutes
pot.uncover
stir.stir
pot.element.set_heat :off
pot.element = Element.new
you.wait 5.minutes
you.eat
