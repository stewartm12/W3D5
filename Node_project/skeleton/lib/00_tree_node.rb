class PolyTreeNode
  attr_reader :value 
  attr_accessor :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent)
    @parent.reject! { |child| child == self }
    @parent = new_parent
    unless @parent == nil 
      new_parent.children << self if !new_parent.children.include?(self)
    end
  end

  def inspect
    @childen 
  end

end