class Calculator

  def add(numbers)
    return 0 if numbers == ""
    result = 0
    tokens = numbers.split(',').map{ |token| token.to_i }
    tokens.each { |number| result += number }
    return result
  end

end