require 'rails_helper'

RSpec.describe "emails/show", type: :view do
  before(:each) do
    @person = FactoryBot.create(:person)
    @email = assign(:email, Email.create!(
      email_address: "Email Address",
      comment: "MyText",
      person: @person,
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email Address/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)

  end
end
