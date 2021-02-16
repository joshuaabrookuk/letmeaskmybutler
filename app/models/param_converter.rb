# frozen_string_literal: true

module ParamConverter
  # MyParamConverter class taskes  string and returns the correct format
  class MyParamConverter
    def cgi_converter(search)
      CGI.escape(search)
    end

    def url_converter; end
  end
end
