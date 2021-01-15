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

    def new_move_positions(pos)
        valid_moves = KnightPathFinder.valid_moves(pos)
        valid_moves.reject! { |move| @considered_positions.include?(move) }
        @considered_positions += valid_moves
        return valid_moves
    end

    def build_move_tree(root_node)
        start_pos = root_node.value
        queue = [start_pos]
        until queue.empty?
            self.new_move_positions(queue.shift)
    end

    private
    attr_reader :root_node


end
def bfs(targeted_value)
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