require 'httparty'
require 'nokogiri'

# disable missing top-level class documentation
class Laptop
  attr_reader :parse_page

  def initialize
    doc = HTTParty.get('https://www.jumia.com.ng/laptops/')
    @parse_page ||= Nokogiri::HTML(doc.body)
  end

  def name
    laptop_name.map(&:text)
  end

  def price
    laptop_price.map(&:text)
  end

  def review
    stars.map(&:text)
  end

  private 

  def laptop_name
    parse_page.css('.name')
  end

  def laptop_price
    parse_page.css('.prc')
  end

  def stars
    parse_page.css('.rev')
  end
end
