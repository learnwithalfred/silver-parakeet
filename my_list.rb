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

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }
