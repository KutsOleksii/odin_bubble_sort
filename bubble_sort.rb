EXAMPLE = [4,3,78,2,0,2]

def bubble_sort(array)
  array ||= EXAMPLE
  max_index = array.size - 2

  max_index.downto(0) do |breakpoint|
    (0..breakpoint).each do |i|
      array[i], array[i.next] = array[i.next], array[i] if array[i] > array[i.next]
    end
  end

  array
end

# Usage: ruby bubble_sort.rb "7, 12, 8, 4, 5, 6, 9"
p bubble_sort(ARGV[0]&.split(",")&.map(&:to_i))
