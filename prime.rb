
def prime?(toCheck)
  if toCheck <= 1
    return false
  elsif toCheck == 2
    return true
  else
  i = 2
    while i < toCheck
      if toCheck % i == 0
        return false
      end
      i += 1
    end
  end
  return true
end
