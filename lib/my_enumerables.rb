module Enumerable
  # Your code goes here
  def my_each_with_index
    return self unless block_given?

    i = 0
    self.my_each do |element|
      yield element, i
      i += 1
    end
    self
  end

  def my_select
    return unless block_given?

    selected = []
    self.my_each do |element|
      selected << element if yield(element)
    end
    selected
  end

  def my_all?(&block)
    return unless block_given?

    number_matches(block) == self.length
  end

  def my_any?(&block)
    return unless block_given?

    number_matches(block).positive?
  end

  def my_none?(&block)
    return unless block_given?

    number_matches(block).zero?
  end

  def my_count(&block)
    if block_given?
      number_matches(block)
    else
      self.length
    end
  end

  def number_matches(block)
    matches = 0
    self.my_each do |element|
      matches += 1 if block.call(element)
    end
    matches
  end

  def my_map(&block)
    return unless block_given?

    arr = []
    self.my_each do |element|
      arr << block.call(element)
    end
    arr
  end

  def my_inject(accumulator = 0, &block)
    return unless block_given?

    self.my_each do |element|
      accumulator = block.call(accumulator, element)
    end
    accumulator
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    if block_given?
      for i in 0...self.length
        yield(self[i])
      end
    end
    self
  end
end
