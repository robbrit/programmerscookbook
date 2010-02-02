ingredients = {
  :eggs => 2
}

pot << :water
pot.set_heat :high

if pot.boiling?
  # if you don't put them in gently then the white splatters
  # and you end up with very stringy whites
  pot.insert (you.crack :eggs), :very_gently
end

if pot.eggs.cooked?
  pot.remove :eggs, :with => :slotted_spoon
end

you.eat
