# frozen_string_literal: true

require 'httparty'
require 'nokogiri'

class Laptop
  attr_accessor :parse_page
  def initialize
    doc = HTTParty.get('https://www.jumia.com.ng/laptops/')
    @parse_page ||= Nokogiri::HTML(doc.body)
  end

  def name
    parse_page.css('.name').children.map { |name| name.text }.compact
  end

  def price
    parse_page.css('.prc').children.map { |price| price.text }.compact
  end

  def review
    parse_page.css('.rev').children.map { |review| review.text }.compact
    
  end
end