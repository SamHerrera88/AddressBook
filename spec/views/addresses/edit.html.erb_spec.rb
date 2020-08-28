require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @person = FactoryBot.create(:person)
    @address = assign(:address, Address.create!(
      street: "MyString",
      town: "MyString",
      zipcode: "MyString",
      state: "MyString",
      country: "MyString",
      person: @person,
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", person_address_path(@person, @address), "post" do

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[town]"

      assert_select "input[name=?]", "address[zipcode]"

      assert_select "input[name=?]", "address[state]"

      assert_select "select[name=?]", "address[country]"
    end
  end
end
