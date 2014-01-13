class SortedArray
  attr_accessor :arr

  def initialize(arr=[])
    @arr = []
    arr.each do |element|
      self.add(element)
    end
  end

  def add(new_ele)
    raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @arr.size
  end

  def [](index)
    raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index_rec(target, start_ind=0, end_ind=@arr.size)
    raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end
end
