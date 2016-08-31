class Dominoes

  attr_reader :list

  def initialize(arr =[])
    @list = []
    if !arr.empty?
      arr.each do |domino|
        @list << Domino.new(domino[0], domino[1])
      end
    end
  end

  # [Domino] => Bool
  def can_chain?
    result = false

    # Base case : empty list
    return length.zero?# empty list

    #Base case : singleton domino
    return first.double? if (length == 1) #singleton doubles can chain, non-doubles can't
 

    result
  end

  def first
    list[0] #the first Domino object in the list
  end

  def length
    list.length
  end
end

class Domino
  attr_accessor :normal
  attr_reader :reverse, :left, :right

  def initialize(left, right)
    @left = left
    @right = right
    @normal = [left, right]
    @reverse = [right, left]
  end

  def double?
    left == right
  end
end