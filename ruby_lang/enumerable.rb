# The Enumerable mixin provides collection classes with several traversal and searching methods, and with the ability to sort.
# The class must provide a method each, which yields successive members of the collection

# all? returns true or false if all elements are matched
puts %w[ant bear cat].all? { |word| word.length >= 3 }

# any? returns true or false if any elements are matched
puts %w[ant bear cats].any? { |word| word.length >= 4 }

# chunk returns an enumerator
[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |elem| elem.odd? }.each { | odd, arr | print [odd, arr] }

# chunk_while
# collect -> array
# collect_concat -> array
# count -> Int
# cycle -> nil, cycles an array
# detect
# drop
# drop_while
# each_cons
# each_entry
# each_slice
# each_with_index
# each_with_object
# entries
# find
# find_all
# find_index
# first
# flat_map
# grep
# grep_v
# group_by
# include?
# inject
# lazy
# map
# max
# max_by
# member?
# min
# min_by
# minmax
# minmax_by
# none?
# one?
# partition
# reduce
# reject
# reverse_each
# select
# slice_after
# slice_before
# slice_when
# sort
# sort_by
# sum
# take
# take_while
# to_a
# to_h
# uniq
# zip