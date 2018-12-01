INPUT   = 'input.txt'.freeze

current = 0
freqs   = Hash.new(0)

puts File.readlines(INPUT)
  .map(&:to_i).cycle.lazy                    # input repeats
  .map { |chng| current += chng }            # stream of frequencies after change
  .detect { |freq| (freqs[freq] += 1) == 2 } # return first frequency that appears twice

# could be done cleaner with a function that's a combination of map + reduce,
# something that has an accretion block var, but also yields at every iteration.
# I've made something like that before in ruby but too lazy rn. Clojure has 
# a function like this but can't remember what it's called.
