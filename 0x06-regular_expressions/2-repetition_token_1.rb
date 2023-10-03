#!/usr/bin/env ruby
# Script to match  a character that repeats at most once, within a specific
# + character sequence
puts ARGV[0].scan(/hb?tn/).join
