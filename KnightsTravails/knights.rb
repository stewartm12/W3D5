require_relative "treenode"

class KnightPathFinder

    def self.valid_moves(pos)
        
    end

    def initialize(start)
        @root_node = PolyTreeNode.new(start)
        self.build_move_tree(@root_node)
    end

    def build_move_tree(root)
        
    end

    private
    attr_reader :root_node


end