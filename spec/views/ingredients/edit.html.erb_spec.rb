require 'spec_helper'

describe "ingredients/edit" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :name => "MyString",
      :quantity => "MyString",
      :price_per_pound => "9.99"
    ))
  end

  it "renders the edit ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ingredient_path(@ingredient), "post" do
      assert_select "input#ingredient_name[name=?]", "ingredient[name]"
      assert_select "input#ingredient_quantity[name=?]", "ingredient[quantity]"
      assert_select "input#ingredient_price_per_pound[name=?]", "ingredient[price_per_pound]"
    end
  end
end
