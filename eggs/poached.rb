ingredients = {
  :eggs => 2,

  # vinegar helps keep the eggs from coming apart
  :vinegar => 1.tbsp
}

pot << :water
pot.set_heat :high

if pot.boiling?
  pot << :vinegar
  pot.set_heat :medium
end

if pot.simmering?
  ladle << (you.crack :eggs)
  pot.submerge ladle
end

if pot.eggs.cooked?
  pot.remove :eggs, :with => :slotted_spoon
end

you.eat
