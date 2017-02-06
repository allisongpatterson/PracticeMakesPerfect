def perms(arr)
  res = []
  for index in 0..(arr.length - 2) do
    temp = Array.new(arr)
    elt = temp.pop
    temp.insert(index, elt)
    res.push(temp)
  end
  return res
end

print perms([1, 2, 3])