require 'mashed_potatoes'

ingredients = {
  :mashed_potatoes => 1.recipe,  # do this exactly like in the other recipe
  :ground_beef => 0.5.pounds,
  :corn => 1.cup
  :salt => you.decide
  :pepper => you.decide
}

pan << :ground_beef, :salt, :pepper
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
casserole_dish << :corn
you.spread :corn, :evenly
casserole_dish << :mashed_potatoes
you.spread :mashed_potatoes, :evenly

oven.turn_on 350
oven << casserole_dish
you.wait 25.minutes

you.eat
