require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each
    (0...@list.length).each do |i|
      yield @list[i]
    end
  end

  def to_s
    @list.to_s
  end
end

# # Create a class MyList that has an instance variable @list.

# class MyList
#   include MyEnumerable

#   def initialize
#     @list = []
#   end
# end

# # In MyList implement a method #each that yields successive members of @list and uses the MyEnumerable module.

# class MyList
#   include MyEnumerable
#   def each(&block)
#     @list.each(&block)
#   end
# end

# # In MyList implement a method #<< that appends the argument to @list.

# class MyList
#   def <<(item)
#     @list << item
#   end
# end

# # In MyList implement a method #first that returns the first element of @list.

# class MyList
#   def first
#     @list.first
#   end
# end

# # In MyList implement a method #last that returns the last element of @list.

# class MyList
#   def last
#     @list.last
#   end
# end

# # In MyList implement a method #[] that returns the element at the given index of @list.

# class MyList
#   def [](index)
#     @list[index]
#   end
# end

# # In MyList implement a method #[] that sets the element at the given index of @list.

# class MyList
#   def []=(index, value)
#     @list[index] = value
#   end
# end

# # In MyList implement a method #select that returns a new MyList containing
# # elements of @list for which the given block returns true.

# class MyList
#   def select
#     new_list = MyList.new
#     @list.each do |item|
#       new_list << item if yield item
#     end
#     new_list
#   end
# end

# # In MyList implement a method #map that returns a new MyList containing
# # the results of running the given block once for every element in @list.

# class MyList
#   def map
#     new_list = MyList.new
#     @list.each do |item|
#       new_list << yield(item)
#     end
#     new_list
#   end
# end

# # In MyList implement a method #inject that combines all elements of @list
# # by applying a binary operation, specified by a block.

# class MyList
#   def inject(&block)
#     @list.inject(&block)
#   end
# end

# # In MyList implement a method #size that returns the number of elements in @list.

# class MyList
#   def size
#     @list.size
#   end
# end
