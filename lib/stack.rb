# your code here

class Stack

  def initialize(limit = nil)
    @limit = limit
    @stack = []
  end

  def push(value)
    if @limit == nil
      return @stack.push(value)
    else
      raise Exception.new("Stack Overflow") unless @stack.size < @limit
      @stack.push (value)
    end
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.size
  end

  def empty?
 
    @stack.size == 0
  end

  def full?
    @stack.size == @limit
  end

  def search(value)
    return -1 if !@stack.include?(value)
    location = @stack.find_index(value) + 1
    @stack.size - location
  end

end