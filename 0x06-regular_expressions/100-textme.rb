#!/usr/bin/env ruby
# Script for regex matching only capital letters

sender =  ARGV[0].scan(/from:(\+?.{11})/).join
receiver = ARGV[0].scan(/to:(\+?\d{11,11})/).join
flags = ARGV[0].scan(/flags:(-?\d:-?\d:-?\d:-?\d:-?\d)/).join

res = sender + "," + receiver + "," + flags
puts res
# puts ARGV[0].scan(/from:([a-zA-Z]*)/)
# puts ARGV[0].scan(/to:(\+?\d{11,11})/).join
# puts ARGV[0].scan(/-?\d:-?\d:-?\d:[01]:-?\d/).join
