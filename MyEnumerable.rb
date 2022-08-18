module MyEnumerable
  def all?
    return true unless block_given?
    each { |x| return false unless yield(x) }
    true
  end

  def any?
    return true unless block_given?
    each { |n| return true if yield(n) }
    false
  end

  def filter?
end