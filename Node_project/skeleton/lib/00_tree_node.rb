class PolyTreeNode
  attr_reader :value 
  attr_accessor :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
    @parent.children.reject! { |child| child == self } unless @parent == nil
    @parent = new_parent
    unless @parent == nil 
      new_parent.children << self unless new_parent.children.include?(self)
    end
  end

  def add_child(child_node)
    child_node.parent=(self)
  end

  def remove_child(child_node)
    raise "node is not a child" unless self.children.include?(child_node)
    child_node.parent=(nil)
  end

  def dfs(target_value)
    return self if target_value == self.value

    self.children.each do |child|
      result = child.dfs(target_value)
      return result unless result == nil
    end

    nil
  end

  def bfs(target_value)
    queue = [self]
    
    until queue.empty?
      if queue.first.value == target_value
        return queue.shift 
      else
        queue += queue.shift.children
      end
    end

    nil
  end

end