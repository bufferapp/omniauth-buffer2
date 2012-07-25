require 'spec_helper'

describe OmniAuth::Strategies::Buffer do

  subject do
    OmniAuth::Strategies::Buffer.new({})
  end

  context "general" do
    it "should be called buffer" do
      subject.options.name.should eq('buffer')
    end
  end

  context "endpoints" do
    it "has correct site" do
      subject.options.client_options.site.should eq("https://api.bufferapp.com")
    end

    it "has correct authorize_url" do
      subject.options.client_options.authorize_url.should eq("https://bufferapp.com/oauth2/authorize")
    end

    it "has correct token_url" do
      subject.options.client_options.token_url.should eq("https://api.bufferapp.com/1/oauth2/token.json")
    end
  end

end