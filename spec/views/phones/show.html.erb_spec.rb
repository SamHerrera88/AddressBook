require 'rails_helper'

RSpec.describe "phones/show", type: :view do
  before(:each) do
    @person = FactoryBot.create(:person)
    @phone = assign(:phone, Phone.create!(
      phone_number: "Phone Number",
      comment: "MyText",
      person: @person,
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
