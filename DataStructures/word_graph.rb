require './graph_node.rb'

class WordGraph

  # this method is called when you initialize an instance of the class
  def initialize(stringSet = [])
    @nodes = []
    create_graph(stringSet)
  end 

  def print_nodes_char
    @nodes.each do |node|
      puts node.char
    end
  end

  def printWordWithLength(length)
    @nodes.each do |node|
      findWord(node, '', length)
    end
  end

  private

  def findWord(node, curr_word, secret_word_length)
    new_word = curr_word + node.char
    return puts new_word if(node.vertices.count == 0 && secret_word_length == new_word.length)
    node.vertices.each do |vertice|
      findWord(vertice, new_word, secret_word_length)
    end
  end

  def node_with_char(char)
    @nodes.each do |node|
      return node if(node.char == char)
    end
    new_node = GraphNode.new(char)
    @nodes.push(new_node)
    return new_node
  end

  def add_vertice(node, next_node)
    return node.contains?(next_node)
    node.add_node(next_node)
  end

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
