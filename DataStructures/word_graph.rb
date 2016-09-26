require '../DataStructures/graph_node.rb'

class WordGraph

  # this method is called when you initialize an instance of the class
  def initialize(stringSet = [])
    @nodes = []
    create_graph(stringSet)
  end 

  # prints word with length of secret word
  def secret_word(length)
    @nodes.each do |node|
      word  = find_word(node, '', length)
      return word if word.length == length
    end
  end

  private

  # depth first search to find secret word of secret word length
  def find_word(node, curr_word, secret_word_length)
    new_word = curr_word + node.char
    return new_word if(node.vertices.length == 0)
    node.vertices.each do |vertice|
      word = find_word(vertice, new_word, secret_word_length)
      return word if word.length == secret_word_length
    end
  end

  # find graph node with char and creates a new new if
  # no node is found
  def node_with_char(char)
    @nodes.each do |node|
      return node if(node.char == char)
    end
    new_node = GraphNode.new(char)
    @nodes.push(new_node)
    return new_node
  end

  # add vertice to new_node if curr_node 
  # doesn't already have a vertice pointing to new_node
  def add_vertice(node, next_node)
    return node.contains?(next_node)
    node.add_node(next_node)
  end


  # creates node graph with the give string set
  def create_graph(stringSet)
    stringSet.each do |string|
      string.split("").each_with_index do |char, i|
        curr_node = node_with_char(char)
        break if (i == (string.length) - 1)
        for index in (i+1)..(string.length-1) do 
          next_node = node_with_char(string[index])
          curr_node.add_vertice(next_node) unless curr_node.contains?(next_node)
        end
      end
    end
  end

end
