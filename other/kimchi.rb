ingredients = {
  # most grocery stores carry this, it looks like a cabbage but longer
  :napa_cabbage => 1,
  :garlic => 1.piece,
  :ginger => 1.tbsp,
  :hot_chili_flakes => 1.tbsp,

  :coarse_salt => 1.tbsp,
  :water => 4.cups,

  # you can add other veggies too, as you like:
  :green_onion => 2.tbsp,
  :carrots => 1,
  :cucumber => 1
}

you.wash :napa_cabbage
you.cut :napa_cabbage, :into => 4.pieces
napa_cabbage.pieces.each do |piece|
  piece.remove_core
  piece.separate_into_leaves
end

begin
  # try to intersperse the cabbage leaves and salt
  big_bowl << :napa_cabbage << :coarse_salt
  big_bowl << :water
ensure
  big_bowl.water_level > big_bowl.napa_cabbage
end

fridge << big_bowl

you.wait 1.day

big_bowl.drain
you.rinse big_bowl.contents

you.chop :garlic, :ginger, :other_veggies

big_bowl << :garlic << :ginger << :hot_chili_flakes << :other_veggies
you.mix big_bowl.contents

jar.clean

big_bowl.contents.each do |piece|
  jar << piece
  jar.pack
end

jar << big_bowl.drain

jar.seal
dark_room_temperature_place << jar

you.wait 2.days

you.eat
fridge << jar
