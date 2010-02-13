servings = 1  # change this to the amount of dough you want

ingredients = {
  :white_flour => servings * 1.cup,
  :water => servings * (0.5).cups,
  :salt => servings * (0.5).tsp
}

bowl << :white_flour << :salt
bowl.contents.mix

while bowl.water.amount < ingredients[:water]
  bowl.add :water, :slowly
  bowl.contents.stir
end

bowl.cover :with => :towel
you.wait 15.minutes
