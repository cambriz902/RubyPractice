require 'set'
require './word_graph.rb'

# this algorithms makes the assumption that secret word
# contains all unique characters and enough hints
# are given to find the correct secret word
class SecretWord

  def initialize
    # secret_word is 'catfish'
    hints = ['atf', 'cat','tfi','cth','ish']
    wordLength = numberOfUniqueChars(hints)
    graph = WordGraph.new(hints)
    secret_word = graph.secret_word(wordLength) # returns catfish!!
    puts secret_word
  end

  # figures out unique characters to get length of secret word
  def numberOfUniqueChars(hints)
    set = Set.new
    hints.each do |string|
      string.split("").each do |char|
        set.add(char) unless set.include?(char)
      end
    end
    return set.size
  end

end