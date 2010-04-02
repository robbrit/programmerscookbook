ingredients = {
  :flour => 1.cup,
  :baking_powder => 3.tbsp,
  :salt => 0.5.tsp,
  :brown_sugar => 3.tbsp,

  :egg => 1,
  :milk => 1.25.cups,
  (:vegetable_oil or :canola_oil) => 3.tbsp,
  :vanilla => 0.25.tsp
}

bowl << :flour << :baking_powder << :salt << :brown_sugar

bowl.contents.mix!

bowl << :egg << :milk << :oil << :vanilla

bowl.contents.mix!

until bowl.empty?
  until pan.full?
    pan << bowl.remove :pancake_sized_piece
  end

  you.wait until pan.contents.cooked?

  pan.contents.each do |pancake|
    pancake.flip!
  end

  you.wait until pan.contents.cooked?

  plate << pan.contents
end

you.eat :with => (:maple_syrup or :fruit or :yogurt or you.choose)
