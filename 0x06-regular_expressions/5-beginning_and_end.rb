#!/usr/bin/env ruby
# Script for matching string starting with and ending with specific
#+ characters
puts ARGV[0].scan(/\Ah.n/).join
