require 'food_processor'

ingredients = {
  # some recipes say to only use the egg yolk for mayo,
  # I find it works well either way and it's easier to
  # leave the white in
  :eggs => 1,

  # you don't have to use olive oil, you can use vegetable
  # oil if you want instead
  :olive_oil => 1.cup,
  :salt => you.decide,
  :pepper => you.decide
}

# NOTE: The lemon taste can be very strong
if you.like? :lemon
  ingredients[:lemon_juice] = 2.tbsp
else
  ingredients[:water] = 1.tbsp
  ingredients[:lemon_juice] = 1.tbsp
end

if you.like? :mustard
  ingredients[:dry_mustard] = 1.tsp
end

tall_plastic_dish << :all

begin
  # put the food processor at the bottom with the yolk
  # and stir _slowly_
  food_processor.stir :very_slowly
rescue DidNotStirSlowlyException
  me.smack you
  you.restart
end

you.eat :with => :something
