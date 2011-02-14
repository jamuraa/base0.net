module Jekyll
  module Filters
    def before_fold(input)
      input.split("<!--more-->").first
    end
  end
end

