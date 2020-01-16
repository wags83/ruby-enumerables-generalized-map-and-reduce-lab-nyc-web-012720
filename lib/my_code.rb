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
  if starting_point
    total = starting_point
    i = 0
  else
    total = array[0]
    i = 1
  while i < array.length do
    total = yield(total, array[i])
    i += 1
  end
total
end
