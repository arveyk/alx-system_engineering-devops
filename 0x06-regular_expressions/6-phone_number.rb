#!/usr/bin/env ruby
# Script for matching 10 digit phone number
puts ARGV[0].scan(/^\d{10,10}$/).join
