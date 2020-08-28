require 'rails_helper'

RSpec.describe "addresses/_index", type: :view do
  before(:each) do
    @person = FactoryBot.create(:person)
    assign(:addresses, [
      Address.create!(
        street: "Street",
        town: "Town",
        zipcode: 1234,
        state: "State",
        country: "Country",
        person: @person,
      ),
      Address.create!(
        street: "Street",
        town: "Town",
        zipcode: 1234,
        state: "State",
        country: "Country",
        person: @person,
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", text: "Street".to_s, count: 2
    assert_select "tr>td", text: "Town".to_s, count: 2
    assert_select "tr>td", text: 1234.to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
  end
end
