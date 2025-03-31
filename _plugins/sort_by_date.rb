module Jekyll
  module SortByDateFilter
    def sort_by_date(input)
      input.sort_by { |item| Date.parse(item.data["due_date"]) }
    end
  end
end
Liquid::Template.register_filter(Jekyll::SortByDateFilter)