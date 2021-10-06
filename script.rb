require 'httparty'
require 'byebug'
require 'nokogiri'


def fetch
   url = 'https://www.lapresse.ca/actualites'
   rawData = HTTParty.get(url)
   selectedData = Nokogiri::HTML(rawData)
   byebug	
end

fetch	