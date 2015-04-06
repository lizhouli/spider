require 'nokogiri'
require 'open-uri'

class Weblink
	def initialize(linkname)
		@baseurl = linkname
	end

	def spider
		puts @baseurl
	end
end


Weblink.new("www.baidu.com").spider

