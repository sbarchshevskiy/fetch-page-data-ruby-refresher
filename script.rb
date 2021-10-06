require 'httparty'
require 'byebug'
require 'nokogiri'


def fetch
   url = 'https://www.lapresse.com/actualites'	
   rawData = HTTParty.get(url)
   selectedData = Nokogiri::HTML(rawData)
   byebug	
end

fetch	