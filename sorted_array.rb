class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    # i had @internal_arr set to input_arr and not [] which produced an infinite loop
    @internal_arr = []
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
    # here we are suppose to use the add function but i'm getting a infinite loop 
    input_arr.each do |num| 
      add( num )
        unless 
          input_arr.empty?
        end 
    end 
  end

  def add new_ele
    add_element = first_larger_index( new_ele )
    # here insert uses the var add_element as a position to place new_ele
    # i didn't really understand what to do until the last it statement
    # and researched how insert takes two arg: position and where   
    @internal_arr.insert( add_element, new_ele )
  end

  def size
    @internal_arr.size
  end

  def [] index
    # I have a tendency to forget the [] at the end of an object refers to index...come on! 
    @internal_arr[index]
  end

  # remember that we're looking for the index...
  def first_larger_index target, start_ind=0, end_ind=@internal_arr.size 
    if @internal_arr.empty? 
      return 0
    elsif start_ind >= end_ind
      return end_ind
    else 
      mid_ind = ( end_ind + start_ind )/2 
      if target > @internal_arr[ mid_ind ]
        return first_larger_index( target, mid_ind + 1, end_ind )
      else 
        return first_larger_index( target, start_ind, mid_ind )
      end 
    end 
  end

  def index(target)
    # and now the final three are failing when they were passing before!!! 
    @internal_arr.include?( target ) ? first_larger_index( target ) : nil 
  end
end




