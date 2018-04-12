def prime?(number)
    if number > 1
      sieveArray = (2..number).to_a
      sieveArray.each_with_index { |multiplier, index|
        if number % multiplier == 0 && number != multiplier
          return false
        end
        while index < sieveArray.length && sieveArray.length != 1
          # Benchmarks:
          # index += multiplier:               1.670000   0.010000   1.680000 (  1.682579)
          # index += multiplier * mulitplier:  0.930000   0.000000   0.930000 (  0.929883)
          index += multiplier * multiplier
          # Euler's variation
          sieveArray.delete_at(index)
        end
      }
      return true
    else return false
    end
end
