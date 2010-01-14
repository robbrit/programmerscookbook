ingredients = {
  :potatoes => 6
}

unless you.like :potato_skins
  you.peel :potatoes
end

you.cut :potatoes, :small_pieces

pot << water
pot.element.set_heat :high

if pot.boiling
  pot << :cut_potatoes
end

class Potato
  def soft?
    you.poke :potato, :with => :fork and potato.falls_off? :fork
  end
end

you.wait until potatoes.soft?  # usually about 20 minutes

strainer << pot.contents
pot << strainer.contents

you.mash :potatoes, :with => (:fork or :potato_masher)
you.eat
