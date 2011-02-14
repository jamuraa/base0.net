module Jekyll
  module Filters
    def date_year(date)
      date.strftime("%Y")
    end

    def date_month(date)
      date.strftime("%b")
    end

    def date_day(date)
      date.strftime("%d")
    end
  end
end
