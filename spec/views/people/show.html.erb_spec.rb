require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      salutation: "Salutation",
      first_name: "First Name",
      middle_name: "Middle Name",
      last_name: "Last Name",
      ssn: "SSN",
      comment: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Salutation/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/SSN/)
    expect(rendered).to match(/MyText/)
  end
end
