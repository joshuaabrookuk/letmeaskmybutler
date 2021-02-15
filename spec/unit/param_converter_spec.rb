# frozen_string_literal: true

require './app/models/param_converter'

describe ParamConverter::MyParamConverter do
  it { should respond_to :converter }
end
