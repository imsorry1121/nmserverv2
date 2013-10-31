#!/usr/bin/env ruby
# encoding: UTF-8

require 'nokogiri'
require 'open-uri'
require 'uri'
#require 'json'

Dir.mkdir("#{ARGV[0]}") unless File.exist?("#{ARGV[0]}")
id = 1
File.open("#{ARGV[0]}.txt").each do |line|
	puts "#{id} #{line}"
	html = Nokogiri::HTML(open(URI.escape("https://www.google.com.tw/search?q=\"#{line}\"&tbm=isch")))
	(0..2).each do |n|
		link = html.css('img')[n]
		open("#{ARGV[0]}/#{id}_#{n+1}.jpg", 'wb') do |file|
			file << open("#{link['src']}").read
		end
	end
	id = id + 1
end