# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "Subscribers" do
  describe "GET /subscribers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get subscribers_path
      response.status.should be(200)
    end
  end
end
