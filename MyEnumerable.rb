module MyEnumerable
  def all?
    return true unless block_given?
    each { |x| return false unless yield(x) }
    true
  end

end