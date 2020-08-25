require 'rails_helper'

RSpec.describe "emails/index", type: :view do
  before(:each) do
    assign(:emails, [
      Email.create!(
        email_address: "Email Address",
        comment: "MyText"
      ),
      Email.create!(
        email_address: "Email Address",
        comment: "MyText"
      )
    ])
  end

  it "renders a list of emails" do
    render
    assert_select "tr>td", text: "Email Address".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end