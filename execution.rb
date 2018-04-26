# phase 1

def my_min(arr)
  answer = arr[0]
  arr.each do |el|
    answer = el
    arr.each do |el2|
      answer = el2 if el2 < answer
    end
    return answer if answer == el
  end


  #Time complexity n
end

#phase 2

def my_min_two(arr)
answer = arr[0]
arr.each {|el| answer = el if el < answer}
answer

#Time complexity n^2
end


#phase 1
require 'byebug'
def sub_sums(arr)
subsets = []
# debugger
  arr.each_with_index do |number,idx1|
      subsets << [number]
    (idx1 + 1...arr.length).each do |idx2|
      subsets += [arr[idx1..idx2]]
    end
  end
  ans = subsets[0]
  subsets.each do |set|
    ans = set if  set.sum > ans.sum
  end
  ans

  #Time complexity n^3
end













if __FILE__ == $PROGRAM_NAME
  # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
  # arr = [1,2,3]
   # p my_min(list)  # =>  -5
   # p my_min_two(list)  # =>  -5
   # p sub_sums(arr)

   list = [2, 3, -6, 7, -6, 7]
  p  sub_sums(list) # => 8 (from [7, -6, 7])
end
