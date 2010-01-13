ingredients = {
  # you can use either green, red or a combination
  (:green_cabbage || :red_cabbage) => 5.leaves,
  :carrot => 1,
  :vinegar => 4.tbsp,
  :salt => you.decide,
  :pepper => you.decide
}

if you.like? :mayonnaise
  ingredients[:mayonnaise] = 4.tbsp
end

you.wash :cabbage
you.chop :cabbage, :finely
you.peel :carrot
you.grate :carrot

bowl << :all
you.stir
you.eat

# this one is dependent upon the value of you.like? :mayonnaise
while not coleslaw.creamy_enough?
  bowl << :more_mayonnaise
  you.stir
end
