class Number2Words
  NUMBER_MAP = {
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

  SUB_UNIT = {
    '1' => 'thousand',
    '2' => 'million',
    '3' => 'billion',
    '4' => 'trllion'
  }


  def explain2Units(unit, number, units = nil)
    units = [] if units == nil
    if number >= 1000**unit then
      units[unit] = number / (1000**unit)
      number = number % 1000**unit
    else
      units[unit]=0
    end
    units = explain2Units(unit-1,number,units) if unit > 0
    return units
  end

  def putsSimpleWords(number)
    h = 0
    result = ''
    h = number / 100 if number >=100
    left = number % 100
    result += " #{NUMBER_MAP[h.to_s]} #{NUMBER_MAP['100']}" if h>0
    result += 's' if h>1
    result += ' and' if left > 0 and h >0
    if left > 20 then
      t = left / 10
      left = left % 10
      result += " #{NUMBER_MAP[(t*10).to_s]}"
    end
    result += " #{NUMBER_MAP[left.to_s]}" if left > 0
    return result
  end

  def getNumberWords(number)
    result = ''
      units = explain2Units(4, number)
      [4,3,2,1,0].each do |x|
        if units[x] > 0 then
        result +=  putsSimpleWords units[x]   #{sub_unit['4']}" if units['4'] > 0
          result += " #{SUB_UNIT[x.to_s]}" if x>0
          result += 's' if units[x]>1 and x>0
          result +=  x>0? ',': '.'
        end
      end
    return result.strip!
  end

end