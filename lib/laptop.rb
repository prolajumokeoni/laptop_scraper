# Disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

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
    parse_page.css('.name').children.map(&:text).compact
  end

  def price
    parse_page.css('.prc').children.map(&:text).compact
  end

  def review
    parse_page.css('.rev').children.map(&:text).compact
  end
end
