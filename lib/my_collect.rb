#require 'pry'
#collection = ['ruby', 'javascript', 'python', 'objective-c']
#collection = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']
def my_collect(collection)
  i=0
  array=[]
  while i < collection.size
    array.push(yield(collection[i]))
    i+=1
  end
  array
#binding.pry
end

collection=[]
my_collect(collection) do |name|
  if name.split.size == 1
  name.upcase
  else
    name.split[0]
  end
end
