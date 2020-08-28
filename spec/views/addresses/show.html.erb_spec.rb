require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @person = FactoryBot.create(:person)
    @address = assign(:address, Address.create!(
      street: "Street",
      town: "Town",
      zipcode: "Zipcode",
      state: "State",
      country: "Country",
      person: @person,
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Town/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
  end
end
