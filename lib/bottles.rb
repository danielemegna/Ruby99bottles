class Bottles

  def verse(count)
    verse = []

    verse << first_period(count)
    verse << second_period(count-1)

    verse.join("\n") + "\n"
  end

  private

  def first_period(count)
    label = bottle_label(count)

    "#{count} #{label} of beer on the wall, #{count} #{label} of beer."
  end

  def second_period(count)
    take = count > 0 ? "one" : "it"
    remaining = count > 0 ? count.to_s : "no more"
    label = bottle_label(count)

    "Take #{take} down and pass it around, #{remaining} #{label} of beer on the wall."
  end

  def bottle_label(count)
    count == 1 ? "bottle" : "bottles"
  end

end
