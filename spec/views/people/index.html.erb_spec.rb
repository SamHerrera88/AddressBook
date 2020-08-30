require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        salutation: "Salutation",
        first_name: "First Name",
        middle_name: "Middle Name",
        last_name: "Last Name",
        ssn: 1234,
        comment: "MyText"
      ),
      Person.create!(
        salutation: "Salutation",
        first_name: "First Name",
        middle_name: "Middle Name",
        last_name: "Last Name",
        ssn: 1234,
        comment: "MyText"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", text: "Salutation".to_s, count: 2
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Middle Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: 1234.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
