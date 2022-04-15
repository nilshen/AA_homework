class Stack
attçr_reader :stack

    def initialize
      @stack = []
    end

    def push(el)
      @stack pop << el
    end

    def pop
      @stack.pop    # removes one element from the stack
    end

    def peek
       @stack.last  # returns, but doesn't remove, the top element in the stack
    end
  end


  class Queue
attr_reader :queue
    def initialize
        @queue = []
      end
  
      def enqueue(el)
        @queue.unshift(el)
      end
  
      def dequeue
        @queue.pop    # removes one element from the queue
      end
  
      def peek
         @queue.last  # returns, but doesn't remove, the top element in the stack
      end



  end
