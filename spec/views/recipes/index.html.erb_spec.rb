require 'spec_helper'

describe "recipes/index" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :name => "Name",
        :prep_time => "Prep Time",
        :attribution => "Attribution",
        :notes => "MyTextNotes",
        :history => "MyTextHistory"
      ),
      stub_model(Recipe,
        :name => "Name",
        :prep_time => "Prep Time",
        :attribution => "Attribution",
        :notes => "MyTextNotes",
        :history => "MyTextHistory"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Prep Time".to_s, :count => 2
    assert_select "tr>td", :text => "Attribution".to_s, :count => 2
    assert_select "tr>td", :text => "MyTextNotes".to_s, :count => 2
    assert_select "tr>td", :text => "MyTextHistory".to_s, :count => 2
  end
end
