
def countBalancingElements(arr)
  starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  result = 0
  p arr.sum
  (0..(arr.size - 1)).each { |i|
    tmp_arr = arr.dup
    tmp_arr.delete_at(i)
    evensOdds(tmp_arr)
    if @even.sum == @odd.sum
      result += 1
    end
  }
  p result
  ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = ending - starting
  puts "Timer = #{elapsed}s"
end

def evensOdds(tmp_arr)
  @even =  []
  @odd =   []
  tmp_arr.each_with_index { |n, i|
    if i.even?
      @even << n
    else
      @odd << n
    end
  }
end



# TEST

arr_a = [2, 1, 6, 4]
puts "\nArray A:"
countBalancingElements(arr_a)
# Output: 1

arr_b = [2, 2, 2]
puts "\nArray B:"
countBalancingElements(arr_b)
# Output: 3

arr_c = Array.new(1000) { rand(1..9) }
puts "\nArray C:"
countBalancingElements(arr_c)
