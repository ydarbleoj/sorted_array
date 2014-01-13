class SortedArray
  attr_accessor :arr

  def initialize(arr=[])
    @arr = []
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @arr.size
  end

  def [](index)
    raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index(target, start_ind=0, end_ind=@arr.size)
    raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    raise NotImplementedError.new("You need to implement the index method!")
  end
end
