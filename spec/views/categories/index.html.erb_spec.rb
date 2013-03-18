# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :title => "Title",
        :categorizable => "",
        :slug => "Slug"
      ),
      stub_model(Category,
        :title => "Title",
        :categorizable => "",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
