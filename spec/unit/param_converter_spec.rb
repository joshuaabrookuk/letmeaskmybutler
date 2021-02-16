# frozen_string_literal: true

require './app/models/param_converter'

describe ParamConverter::MyParamConverter do
  let(:paramconverter) { ParamConverter::MyParamConverter.new }

  it { should respond_to :converter }

  it { is_expected.to respond_to(:converter).with(1).arguments }

  it 'should convert the string' do
    expect(paramconverter.converter('Who is Frank Sinatra?')).to eq('Who+is+Frank+Sinatra%3F')
  end
end
