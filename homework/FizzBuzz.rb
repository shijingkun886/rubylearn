class FizzBuzz
  def sayFizzBuzz(number)
    result = ''
    if( number%3==0 || number.to_s.include?("3") ) then result+= "#{number}:Fizz" end
    if( number%5==0 || number.to_s.include?("5") ) then result+= "#{number}:Buzz" end
    return result
  end
end

