require 'httparty'
require 'byebug'
require 'nokogiri'


def fetch
   url = 'https://www.lapresse.ca/actualites'
   rawData = HTTParty.get(url)
   selectedData = Nokogiri::HTML(rawData)
   headlines = selectedData.css('div.articleDetail')
   headlines.each do |headline|
      output = {
        title: headline.css('span.title').text,
        url: headline.css('a')[0].attributes['href'].text

      }
      byebug
   end
end

fetch