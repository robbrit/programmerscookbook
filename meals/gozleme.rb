require 'mashed_potatoes'
require 'basic_dough'

ingredients = {
  :mashed_potatoes => 1.recipe,
  :basic_dough => 1.recipe,
  :onion => 0.5..1,
  :olive_oil => 2.tbsp,
  :cayenne => 1.tsp,
  :celery => 1.stick,
  :cheese => 1.cup,

  :coarse_salt => you.decide,
  :pepper => you.decide,
  (:butter or :margarine) => :as_needed
}

def make_filling
  you.chop :onions, :celery

  pan.element.set_heat :medium
  pan << :olive_oil << :onions << :celery << :cayenne

  if onions.brown?
    pan.element.set_heat :low
    pan << :cheese << :mashed_potatoes << :pepper
  end
end

def prepare_dough
  dough_balls = basic_dough.form :into => :balls, :radius => 3.cm

  dough_balls.each do |ball|
    ball.flatten! :thickness => 5.mm
    ball << :filling
    ball.fold :over => :filling
    you.pinch ball.edges
    you.sprinkle :salt, :onto => ball
  end
end

def cook
  pan2.element.set_heat :medium
  dough_balls.each do |ball|
    pan2 << :butter
    you.wait 10.seconds

    pan2 << ball
    you.wait 2.minutes

    ball.flip
    you.wait 2.minutes

    pan2.remove ball
  end
end

make_filling
prepare_dough
cook

you.eat
