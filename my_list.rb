require_relative './my_enumerable'

class MyList
  def initialize(*args)
    @list = args
  end

  include MyEnumerable

  def each(&block)
    @list.each { |x| block.call(x) }
  end
end

list = MyList.new(1, 2, 3, 4)

puts list.all? { |e| e < 5 }

puts list.all? { |e| e > 5 }

puts list.any? {|e| e == 2}

puts list.any? {|e| e == 5}

print list.filter {|e| e.even?}
