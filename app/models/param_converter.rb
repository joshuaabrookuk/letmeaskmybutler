# frozen_string_literal: true

module ParamConverter
  # MyParamConverter class taskes  string and returns the correct format
  class MyParamConverter
    def converter(search)
      CGI.escape(search)
    end
  end
end
