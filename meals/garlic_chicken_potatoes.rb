ingredients = {
  :chicken => (3..4).pieces,
  :potatoes => 3..4,
  :carrots => 2..3,
  
  :butter => 2.tbsp,
  :olive_oil => 2.tbsp,
  :parsley => 1.tbsp,
  :rosemary => 1.tbsp,
  :basil => 1.tsp,
  :garlic => 2.cloves,
  :salt and :pepper => you.decide
}

oven.set_heat 350.F

casserole_dish << :foil

(carrots and potatoes).peel if you.want?
(carrots and potatoes).chop

casserole_dish << :carrots << :potatoes << :chicken

ingredients[:butter].melt
garlic.press or garlic.chop

bowl << :butter << :oil << :parsley << :rosemary << :garlic << :basil << :salt << :pepper
bowl.contents.mix

bowl.contents.pour :over => casserole_dish.contents

oven << casserole_dish

you.wait 45.minutes

oven.remove casserole_dish

while not casserole_dish.contents.cooked?
  oven << casserole_dish
  you.wait
end

oven.set_heat :off

you.eat
