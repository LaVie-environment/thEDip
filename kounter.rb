#!/usr/bin/ruby

require "open-uri"

def count_any_tags(url, tag)
  pattern = /<#{tag}\b/
  page = URI.open(url).read
  tags = page.scan(pattern)
  puts "The site #{url} has #{tags.length} #{tag} tags"
end

count_any_tags("http://www.wsj.com", "div")