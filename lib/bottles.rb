class Bottles

  def verses(from, to)
    (to..from).to_a.reverse.collect { |i|
      verse(i)
    }.join("\n")
  end

  def verse(count)
    [
      first_period(count),
      second_period(count)
    ].join("\n") + "\n"
  end

  private

  def first_period(count)
    label = bottle_label(count)
    count_str = count > 0 ? count.to_s : "no more"

    "#{count_str.capitalize} #{label} of beer on the wall, #{count_str} #{label} of beer."
  end

  def second_period(count)
    return "Go to the store and buy some more, 99 bottles of beer on the wall." if(count == 0)

    take = "one"
    remaining = (count-1).to_s
    if(count == 1)
      take = "it"
      remaining = "no more"
    end

    label = bottle_label(count-1)
    "Take #{take} down and pass it around, #{remaining} #{label} of beer on the wall."
  end

  def bottle_label(count)
    count == 1 ? "bottle" : "bottles"
  end

end
