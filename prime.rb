def prime?(number)
  if number <= 1
    return false
  end

  if number % 2 == 0 && number != 2
    return false
  end

  range = (3..(number / 2)).to_a
  range.each do |n|
    if number % n == 0
      return false
    end
  end

  true
end
