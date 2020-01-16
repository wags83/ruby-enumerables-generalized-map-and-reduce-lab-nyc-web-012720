# Your Code Here
def map(array)
  i=0
  return_array = []
  while i < array.length do
    return_array << yield(array[i])
    i += 1
  end
  return_array
end

def reduce(array, starting_point = 0)
  i = 0
  total = starting_point
  while i < array.length do
    total = yield(total, array[i])
    i += 1
  end
  total
end
