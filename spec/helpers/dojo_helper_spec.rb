require 'spec_helper'
require_relative '../../app/helpers/dojo_helper'

describe DojoHelper, :type => :helper do
  
  let(:options) do 
    { :base_url => "/assets/dojo" }
  end

  it "should only return camelized keys" do
    camelized = helper.camelize_keys(options)
    camelized.keys.should_not include(:base_url)
    camelized.keys.should include("baseUrl")
  end

  it "should return a javascript tag containing the options" do
    config = helper.dojo_config(options)
    config.should match(/script/)
    config.should match(/baseUrl/)
    config.should match(/dojoConfig/)
  end

end
