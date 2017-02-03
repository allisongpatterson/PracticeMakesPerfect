def perms(arr)
  res = []
  for j in 0..(arr.length - 1) do
    temp = Array.new(arr)
    scooter = temp.slice!(j)
    # print scooter
    # print temp
    for i in 0..(arr.length - 1) do
      temp2 = Array.new(temp)
      temp2.insert(i, scooter)
      res.push(temp2)
    end
  end
  return res.uniq
end

print perms([1, 2, 3]), "\n"