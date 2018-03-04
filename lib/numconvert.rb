require "numconvert/version"

module Numconvert
  # Your code goes here...
  def  self.stringadd(input)
   	if input.gsub(/[^0-9-]/, '').split('').include?('-')
      raise  "Negative Number is not allowed"
    else
      result = input.each_char.map {|c| c.to_i }.reduce(:+) || 0
    end
    return result
  end
end
