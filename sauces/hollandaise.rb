# this is a slight adaptation to the recipe found
# in the Joy of Cooking
ingredients = {
  :eggs => 3,
  :water => 1.5.tbsp,
  :lemon_juice => 3.tsp,
  :cayenne => (1/8).tsp,
  :pepper => (1/4).tsp,

  # don't use margarine, it doesn't
  # taste very good
  :butter => 10.tbsp
}

if not butter.salted?
  ingredients[:salt] = (1/2).tsp
end

# see below for an easy way to do this
eggs.separate_yolks

metal_bowl << :water << :egg_yolks
you.whisk :eggs until eggs.frothy?
pot << :water
pot.element.set_heat :medium

# here's the hard part
if pot.simmering?
  # you can't rest it ON the pot, since it will cook
  # the eggs where the bowl touches the pot
  you.hold :metal_bowl, :over => pot

  # you don't want to cook the eggs, just get them
  # slightly thick
  while not eggs.slightly_thick?
    you.whisk :occasionally
  end
end

you.wait until eggs.slightly_cooled?

bowl << :butter
microwave << bowl
microwave.cook until butter.melted?

while bowl.contains? :butter
  metal_bowl.add :melted_butter, :very_slowly
  you.whisk
end

metal_bowl << :lemon_juice << :cayenne << :pepper

you.serve :with => :something

class Eggs
  def separate_yolks
    # do this over a bowl so that the egg white drops into the bowl
    over :bowl do
      egg.crack  # but don't open!
      egg.turn until egg.crack.horizontal?
      egg.shell.open

      while egg.contains? :white
        you.transfer :egg, :to => :other_shell
      end
    end

    # you can use egg whites for lots of things, and they freeze well.
    # If you don't have anything to use them for right away, just
    # put them in a tupperware and pop them in the freezer. Maybe I
    # will post a recipe using them sometime, or you can just toss them
    # into scrambled eggs sometime.
  end
end
