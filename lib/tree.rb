class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(str)
    nodes_to_visit = [@root]
    current_node = nil
    while nodes_to_visit.length > 0
      current_node = nodes_to_visit.shift
      if current_node[:id] == str
        return current_node
      else
        nodes_to_visit = nodes_to_visit + current_node[:children]
      end
    end

    return nil
  end
end