def convert(integer)
  return "" unless integer.is_a? Numeric
  thousands(integer) + hundreds(integer) + tens(integer) + units(integer)
end

def thousands(integer)
  "M" * (integer / 1000)
end

def hundreds(integer)
  i = integer % 1000 / 100
  to_partial_roman_string("C", "D", "M", i)
end

def tens(integer)
  i = integer % 100 / 10
  to_partial_roman_string("X", "L", "C", i)
end

def units(integer)
  i = integer % 10
  to_partial_roman_string("I", "V", "X", i)
end

def to_partial_roman_string(char_1, char_2, char_3, number)
  return char_1 * number                  if (0 <= number && number < 4)
  return char_1 + char_2                  if number == 4
  return char_2 + (char_1 * (number - 5)) if (5 <= number && number < 9)
  return char_1 + char_3                  if number == 9
end
