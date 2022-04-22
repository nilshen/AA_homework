#Sluggish Octopus

# O(N^2)

def longest_fish(arr)
    longest = ""
    arr.each do |el1|
        arr.each do |el2|
            if el1.length > el2.length
                longest = el1
            else
                longest = el2
            end
        end
    end
longest
end



#O(n log n) Merge Sort
class Array

    def dominant_octopus
        return self if self.count <=1
        mid = self.length / 2
        left = self[0...mid]
        right = self[mid..-1]
        sort_left = left.dominant_octopus
        sort_right = right.dominant_octopus
        merge(sort_left,sort_right)
    end

    def merge(left,right)
        sorted = []
        until left.empty? || right.empty?
            case left[0].length <=> right[0].length
            when -1
                sorted << left.shift
            when 1
                sorted << right.shift
            when 0
                sorted << left.shift
            end
        end
        sorted + left + right
    end

end

# O(n)
def clever_octopus(arr)
longest = ""
    arr.each_with_index do |el|
        if el.length > longest.length
            longest = el
        end
    end
longest
end

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

puts longest_fish(arr)
puts "-------------------"
puts clever_octopus(arr)
puts "-------------------"
puts arr.dominant_octopus.last

#=> "fiiiissshhhhhh"


# linear octopus dance
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile|
      return tiles_array.index(tile) if tile == direction
    end
  end
  
puts slow_dance("up", tiles_array)
puts slow_dance("right-down", tiles_array)


  # constant octopus dance
  #use a hash for constant lookup
  tiles_hash = {
      "up" => 0,
      "right-up" => 1,
      "right"=> 2,
      "right-down" => 3,
      "down" => 4,
      "left-down" => 5,
      "left" => 6,
      "left-up" => 7
  }
  
  def fast_dance(direction, tiles_hash)
    tiles_hash[direction]
  end

puts fast_dance("up", tiles_hash)
#> 0

puts fast_dance("right-down", tiles_hash)
#> 3