require 'rails_helper'

RSpec.describe "phones/show", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      phone_number: "Phone Number",
      comment: "MyText",
      person: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
