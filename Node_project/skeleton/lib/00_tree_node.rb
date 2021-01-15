class PolyTreeNode
  attr_reader :parent, :children, :value 

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
    @parent = new_parent
    unless @parent == nil
      @parent.children << self.value 
    end
  end


end