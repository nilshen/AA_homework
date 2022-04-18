require "set"

class GraphNode
attr_accessor :value, :neighbors

    def initialize(value)
        self.value = value
        self.neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end

    def bfs(starting_node, target)
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
                node = queue.shift
            unless visited.include?(node)   # why this line?
                return node.value if node.value == target
                visited.add(node)
                queue += node.neighbors
            end
        end
        nil

    end

    

end



p a = GraphNode.new('a')
p b = GraphNode.new('b')
p c = GraphNode.new('c')
p d = GraphNode.new('d')
p e = GraphNode.new('e')
p f = GraphNode.new('f')
p a.neighbors = [b, c, e]
p c.neighbors = [b, d]
p e.neighbors = [a]
p f.neighbors = [e]
puts "----------------------------"

p a.bfs(a, "b")
p a.bfs(a, "c")
p a.bfs(a, "f")

