require 'mashed_potatoes'

ingredients = {
  :mashed_potatoes => 1.recipe, # do this exactly like in the other recipe
  :ground_beef => 0.5.pounds,

  # for the vegetables, use whichever ones you want
  # these are the ones I like
  :corn => 1.cup,
  :carrots => 1,
  :peas => 1.cup,

  :worcestershire_sauce => 2.tbsp,
  :chili_powder => 2.tbsp,
  :paprika => 1.dash,
  :cheese => you.decide,
}

you.peel :carrot
you.slice :carrot, :into => :small_pieces

pan << :ground_beef << :worcestershire_sauce << :chili_powder << :carrot << :peas << :corn
pan.element.set_heat :medium

class Meat
  def cooked?
    not self.red?
  end
end

until meat.cooked?
  you.stir :occasionally, :with => :wooden_spoon
end

casserole_dish << :meat_mixture

casserole_dish << :mashed_potatoes
you.spread :mashed_potatoes, :evenly

casserole_dish << :paprika

you.grate :cheese
casserole_dish << :grated_cheese

if not food.hot?
  oven.turn_on 150  # doesn't need a very high heat
  oven << casserole_dish until food.hot?
end

you.eat
