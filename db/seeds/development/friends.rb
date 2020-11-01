names =['明月 栞那','四季 ナツメ','墨染 希','火打谷 愛衣','汐山 涼音']

names.each do |name|
    Friend.create(
      name: "#{name}",
    )
end
