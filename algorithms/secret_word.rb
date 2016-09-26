require 'set'
require '../DataStructures/word_graph.rb'

class SecretWord

  def initialize
    secret_word = 'catfish'
    hints = ['cat','tfi','fis','cht','ish']
    wordLength = numberOfUniqueChars(hints)
    graph = WordGraph.new(hints)
    graph.printWordWithLength(wordLength)
  end

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