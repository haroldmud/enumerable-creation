require_relative './MY_ENUMERABLE'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = new.Mylist(1, 2, 3, 4, 5)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

print(list.filter?(&:even?))
