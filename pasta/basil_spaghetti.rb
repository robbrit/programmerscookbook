ingredients => {
  :spaghetti => 1.package,
  :basil => 4.tbsp,
  :garlic_salt => 2.tsp,
  :parmesan => 1.tbsp,
  :olive_oil => 2.tbsp
}

pot << :water
pot.element.set_heat :high

if pot.boiling?
  pot << :spaghetti
  pot.element.set_heat :medium
end

until pot.spaghetti == :soft
  you.stir :occasionally
end

strainer.contents = pot.empty
pot.contents = strainer.empty

pot << :everything_else

you.stir
you.eat
