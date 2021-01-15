require_relative "treenode"

class KnightPathFinder

    def valid_move?(pos)
        return false if pos[0] < 0 || pos[0] > 7
        return false if pos[1] < 0 || pos[1] > 7
        true 
    end

    def self.valid_moves(pos) 
        moves = []
        changes = [[-2, 1], [-2, -1], [2, 1], [2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
        changes.each do |change|
            row, col = pos
            newmove = [(change[0] + row), (change[1] + col) ]
            moves << newmove if self.valid_move?(newmove)
        end
        moves
    end

    def initialize(start)
        @root_node = PolyTreeNode.new(start)
        self.build_move_tree(@root_node)
        @considered_positions = [start]
    end

    def build_move_tree(root)
        
    end

    private
    attr_reader :root_node


end