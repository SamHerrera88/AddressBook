require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      street: "MyString",
      town: "MyString",
      zipcode: "MyString",
      state: "MyString",
      country: "MyString"
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[town]"

      assert_select "input[name=?]", "address[zipcode]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[country]"
    end
  end
end
