require 'spec_helper'

describe "ingredients/new" do
  before(:each) do
    assign(:ingredient, stub_model(Ingredient,
      :name => "MyString",
      :quantity => "MyString",
      :price_per_pound => "9.99"
    ).as_new_record)
  end

  it "renders new ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ingredients_path, "post" do
      assert_select "input#ingredient_name[name=?]", "ingredient[name]"
      assert_select "input#ingredient_quantity[name=?]", "ingredient[quantity]"
      assert_select "input#ingredient_price_per_pound[name=?]", "ingredient[price_per_pound]"
    end
  end
end
