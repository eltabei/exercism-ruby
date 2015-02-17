class Hamming
  def self.compute(a, b)
    if a.length > b.length
      a = a[0, b.length]
    elsif a.length < b.length
      b = b[0, a.length]
    end
    a.each_char.zip(b.chars).count { |x, y| x != y }
  end
end
