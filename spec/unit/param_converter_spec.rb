# frozen_string_literal: true

require './app/lib/param_converter'

describe ParamConverter::MyParamConverter do
  let(:paramconverter) { ParamConverter::MyParamConverter.new }

  it { should respond_to :cgi_converter }

  it { is_expected.to respond_to(:cgi_converter).with(1).arguments }

  describe '#paramconverter' do
    it 'should convert the string' do
      expect(paramconverter.cgi_converter('Who is Frank Sinatra?')).to eq('Who+is+Frank+Sinatra%3F')
    end
  end

  it { should respond_to :url_converter }

  describe '#url_converter' do
    it 'should return a url' do
      expect(paramconverter.url_converter('Who+is+Frank+Sinatra%3F')).to eq('http://localhost:4567/search?search_query=Who+is+Frank+Sinatra%3F')
    end
  end
end
