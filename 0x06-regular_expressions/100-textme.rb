#!/usr/bin/env ruby
# Script for regex matching only capital letters
puts ARGV[0].scan(/\+\d{11,11}(.*?)/).join
puts ARGV[0].scan(/[01]/).join
