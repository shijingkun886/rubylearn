def sayFizzBuzz(number)
	if( number%3==0 || number.to_s.include?("3") ) then puts "#{number}:Fizz" end
	if( number%5==0 || number.to_s.include?("5") ) then puts "#{number}:Buzz" end
end

(1..60).each {|x| sayFizzBuzz x }
