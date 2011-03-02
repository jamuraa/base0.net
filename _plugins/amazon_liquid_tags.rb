require 'amazon/aws'
require 'amazon/aws/search'
require 'cgi'

module Jekyll
  class AmazonResultCache
    def initialize
      @result_cache = {}
    end

    @@instance = AmazonResultCache.new

    def self.instance
      @@instance
    end

    def item_lookup(asin)
      asin.strip!
      return @result_cache[asin] if @result_cache.has_key?(asin)
      il = Amazon::AWS::ItemLookup.new('ASIN', {'ItemId' => asin})
      resp = Amazon::AWS::Search::Request.new.search(il)
      @result_cache[asin] = resp
      return resp
    end

    private_class_method :new
  end

  module Filters
    def amazon_link(text)
      resp = AmazonResultCache.instance.item_lookup(text)
      item = resp.item_lookup_response[0].items[0].item[0]
      url = CGI::unescape(item.detail_page_url.to_s)
      title = item.item_attributes.title.to_s
      '<a href="%s">%s</a>' % [url, title]
    end

    def amazon_authors(text)
      resp = AmazonResultCache.instance.item_lookup(text)
      item = resp.item_lookup_response[0].items[0].item[0]
      url = CGI::unescape(item.detail_page_url.to_s)
      authors = item.item_attributes.author.collect(&:to_s)
      array_to_sentence_string(authors)
    end

    def amazon_medium_image(text)
      resp = AmazonResultCache.instance.item_lookup(text)
      item = resp.item_lookup_response[0].items[0].item[0]
      url = CGI::unescape(item.detail_page_url.to_s)
      image_url = item.image_sets.image_set.medium_image.url
      '<a href="%s"><img src="%s" /></a>' % [url, image_url]
    end

    def amazon_large_image(text)
      resp = AmazonResultCache.instance.item_lookup(text)
      item = resp.item_lookup_response[0].items[0].item[0]
      url = CGI::unescape(item.detail_page_url.to_s)
      image_url = item.image_sets.image_set.large_image.url
      '<a href="%s"><img src="%s" /></a>' % [url, image_url]
    end

    def amazon_small_image(text)
      resp = AmazonResultCache.instance.item_lookup(text)
      item = resp.item_lookup_response[0].items[0].item[0]
      url = CGI::unescape(item.detail_page_url.to_s)
      image_url = item.image_sets.image_set.small_image.url
      '<a href="%s"><img src="%s" /></a>' % [url, image_url]
    end
  end
end

