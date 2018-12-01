INPUT = 'input.txt'.freeze

puts File.readlines(INPUT).lazy.map(&:to_i).reduce(&:+)
