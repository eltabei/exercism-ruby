class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = @word.chars.sort
  end

  def match(words)
    words.select { |w| anagram?(w) }
  end

  private
  def anagram?(word)
    w = word.downcase
    return false if w == @word || w.length != @word.length
    w.chars.sort == @letters
  end
end
