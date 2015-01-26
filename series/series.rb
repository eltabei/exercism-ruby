class Series
  def initialize(s)
    @s = s
  end

  def slices(n)
    raise ArgumentError if n > @s.length
    0.upto(@s.length - n).inject([]) do |res, i|
      res << @s[i...i + n].each_char.map { |c| c.to_i }
    end
  end
end
