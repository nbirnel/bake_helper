require 'spec_helper'

describe "recipes/new" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :prep_time => "MyString",
      :attribution => "MyString",
      :notes => "MyText",
      :history => "MyText"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipes_path, "post" do
      assert_select "input#recipe_name[name=?]", "recipe[name]"
      assert_select "input#recipe_prep_time[name=?]", "recipe[prep_time]"
      assert_select "input#recipe_attribution[name=?]", "recipe[attribution]"
      assert_select "textarea#recipe_notes[name=?]", "recipe[notes]"
      assert_select "textarea#recipe_history[name=?]", "recipe[history]"
    end
  end
end
