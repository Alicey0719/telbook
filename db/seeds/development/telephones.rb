count = Friend.count

1.upto(count) do |num|
  f = Friend.find_by(id:num)
  t1 = rand(8999)+1000
  t2 = rand(8999)+1000
  Telephone.create(
   friend: f,
   number: "080-#{t1}-#{t2}",
   cellphone: true
  )
end 

