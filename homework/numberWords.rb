$number_map = {
  '1' => 'one',
  '2' => 'two',
  '3' => 'three',
  '4' => 'four',
  '5' => 'five',
  '6' => 'six',
  '7' => 'seven',
  '8' => 'eight',
  '9' => 'nine',
  '10' => 'ten',
  '11' => 'eleven',
  '12' => 'twelve',
  '13' => 'thirteen',
  '14' => 'fourteen',
  '15' => 'fifteen',
  '16' => 'sixteen',
  '17' => 'seventeen',
  '18' => 'eighteen',
  '19' => 'ninteen',
  '20' => 'twenty',
  '30' => 'thirty',
  '40' => 'fourty',
  '50' => 'fifty',
  '60' => 'sixty',
  '70' => 'seventy',
  '80' => 'eighty',
  '90' => 'ninty',
  '100' => 'hundred'
}

$sub_unit = {
  '1' => 'thousand',
  '2' => 'million',
  '3' => 'billion',
  '4' => 'trllion'
}

$units=[]
def explain(unit,number)
  if number >= 1000**unit then
    $units[unit] = number / (1000**unit)
    balance = number % 1000**unit
    explain(unit-1,balance) if unit > 1
  else
    $units[unit]=0
    explain(unit-1,number) if unit > 1
  end
end
def puts_words(number)
  t = 0
  h = 0
  h = number / 100 if number >=100
  left = number % 100
  print $number_map[h.to_s]
  print " "
  print "#{$number_map['100']} " if h>0
  print "and " if left > 0 and h >0
  if left > 20 then
    t= left /10
    left = left % 10
    print $number_map["#{t}0"]
    print " "
    print $number_map[left.to_s] if left > 0
    print " "
  else
    if left >0 then
    print $number_map[left.to_s]
    end
  end
  print " "
end

def output(units)
  [4,3,2,1].each do |x|
    if units[x] > 0 then
      puts_words units[x]   #{sub_unit['4']}" if units['4'] > 0
      print $sub_unit[x.to_s]
      print x>1?",":"."
      print " "
    end
  end
  puts
end

test_num = 56789098
explain(4,test_num)
output($units)
