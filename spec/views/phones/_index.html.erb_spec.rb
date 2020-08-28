require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    @person = FactoryBot.create(:person)
    assign(:phones, [
      Phone.create!(
        phone_number: "Phone Number",
        comment: "MyText",
        person: @person,
      ),
      Phone.create!(
        phone_number: "Phone Number",
        comment: "MyText",
        person: @person,
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
