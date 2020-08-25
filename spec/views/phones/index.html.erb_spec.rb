require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        phone_number: "Phone Number",
        comment: "MyText"
      ),
      Phone.create!(
        phone_number: "Phone Number",
        comment: "MyText"
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
