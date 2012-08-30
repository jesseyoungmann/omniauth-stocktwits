require 'spec_helper'

describe "OmniAuth::Strategies::StockTwits" do
  subject do
    OmniAuth::Strategies::StockTwits.new({})
  end

  it "should add a camelization for itself" do
    OmniAuth::Utils.camelize('stocktwits').should == 'StockTwits'
  end

  context 'client options' do
    it 'should have the correct StockTwits site' do
      subject.options.client_options.site.should eq('https://api.stocktwits.com')
    end

    it 'should have the correct StockTwits authorize url' do
      subject.options.client_options.authorize_url.should eq('https://api.stocktwits.com/api/2/oauth/authorize')
    end

    it 'should have the correct StockTwits token url' do
      subject.options.client_options.token_url.should eq('https://api.stocktwits.com/api/2/oauth/token')
    end
  end

end
