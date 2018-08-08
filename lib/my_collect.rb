def my_collect(collection)
  i=0
  new_collection=[]
  while i < new_collection.size
    new_collection.push(yield(collection[i]))
    i+=1
  end
  new_collection
end
