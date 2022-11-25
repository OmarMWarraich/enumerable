# Create a module MyEnumerable that implements the following methods
# (they should have the same funcionality as methods in Enumerable):

# all?
# any?
# filter

module MyEnumerable
  def all?
    each do |i|
      return false unless yield i
    end
    true
  end

  def any?
    each do |i|
      return true if yield i
    end
    false
  end

  def filter
    result = []
    each do |i|
      result << i if yield i
    end
    result
  end
end
