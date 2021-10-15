# frozen_string_literal: true

module ParamConverter
  # MyParamConverter class taskes  string and returns the correct format
  class MyParamConverter
    def cgi_converter(search)
      CGI.escape(search)
    end

    def url_converter(cgi_search)
      # "https://letmeaskmybutler.herokuapp.com/search?search_query=#{cgi_search}"
      "http://localhost:4567/search?search_query=#{cgi_search}"
    end
  end
end
