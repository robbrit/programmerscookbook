ingredients = {
  :cooked_black_beans => 3.cups,
  :olive_oil => 3.tbsp,
  :garlic => 2.cloves
}

you.chop :garlic

pan << :oil
pan.set_heat :medium

you.wait 30.seconds

pan << :garlic

you.wait 1.minute, :stirring => :occasionally

pan << :beans

until beans.mashed?
  pan.contents.stir
  pan.contents.mash :with => :back_of_spoon

  pan << :oil if necessary?
end

you.eat
