require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        saluation: "Saluation",
        first_name: "First Name",
        middle_name: "Middle Name",
        last_name: "Last Name",
        ssn: "Ssn",
        comment: "MyText"
      ),
      Person.create!(
        saluation: "Saluation",
        first_name: "First Name",
        middle_name: "Middle Name",
        last_name: "Last Name",
        ssn: "Ssn",
        comment: "MyText"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", text: "Saluation".to_s, count: 2
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Middle Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Ssn".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
