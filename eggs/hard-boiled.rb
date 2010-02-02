ingredients = {
  :eggs => you.decide
}

pot << :water
pot.element.set_heat :high

if pot.boiling?
  # this means don't break the eggs :P
  pot.insert :eggs, :with => :shell
end

you.wait 10.minutes

pot.element.set_heat :off
pot.remove :water

unless you.can_wait?
  cold_tap.turn_on
  you.put :eggs, :under => :tap
else
  you.wait 10.minutes
end

eggs.remove_shell

you.eat
