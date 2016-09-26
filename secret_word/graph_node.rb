class GraphNode 

  def initialize(char = '')
    @char = char
    @vertices = []
  end

  def contains?(new_node)
    @vertices.each do |vertice|
      return true if(vertice.char == new_node.char)
    end
    return false
  end

  def add_vertice(new_node)
    @vertices.push(new_node)
  end

  def char
    @char
  end

  def vertices
    @vertices
  end

end
