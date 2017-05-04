def hashtag (str)
  res = str.split(' ').select{|word| word[0] == '#' }.map {|kw| kw.gsub(/^#+/,'')}
  res.select { |kw| /\A[a-z]+\z/i.match(kw) }
end
