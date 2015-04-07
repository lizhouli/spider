require 'nokogiri'
require 'open-uri'

class Weblink
	def initialize(linkname)
        @doc = Nokogiri::HTML(open(linkname))
        @ofile = File.open("href.txt", "w")
	end

	def savehref 
        @doc.xpath('//a[@href]').each do |link|
           single = link['href'].to_s
           @ofile.puts single if single.include?('http')
        end
	end

    def spider
        savehref
    end
end


Weblink.new("http://www.baidu.com").spider

