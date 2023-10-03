#!/usr/bin/env ruby
# Ruby script to match simple pattern
puts ARGV[0].scan(/hbt{2,}n/).join
