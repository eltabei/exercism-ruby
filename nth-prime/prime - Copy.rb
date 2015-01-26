class Prime
  def self.nth(n)
    raise ArgumentError if n == 0
    i = 0
    self.sieve(n * 10).each do |p|
      i += 1
      if i == n
        return p
      end
    end
    return 0
  end

  def self.sieve(limit)
    numbers = [2, 3] + (5...limit).step(2).to_a
    p 'done numbers'
    numbers.each do |p|
      n = 2 * p
      while n < limit
        numbers.delete(n)
        n += p
      end
    end
    return numbers
  end
end
