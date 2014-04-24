require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :prep_time => "MyString",
      :attribution => "MyString",
      :notes => "MyText",
      :history => "MyText"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do
      assert_select "input#recipe_name[name=?]", "recipe[name]"
      assert_select "input#recipe_prep_time[name=?]", "recipe[prep_time]"
      assert_select "input#recipe_attribution[name=?]", "recipe[attribution]"
      assert_select "textarea#recipe_notes[name=?]", "recipe[notes]"
      assert_select "textarea#recipe_history[name=?]", "recipe[history]"
    end
  end
end
