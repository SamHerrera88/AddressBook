require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      salutation: "MyString",
      first_name: "MyString",
      middle_name: "MyString",
      last_name: "MyString",
      ssn: "MyString",
      comment: "MyText"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "select[name=?]", "person[salutation]"

      assert_select "input[name=?]", "person[first_name]"

      assert_select "input[name=?]", "person[middle_name]"

      assert_select "input[name=?]", "person[last_name]"

      assert_select "input[name=?]", "person[ssn]"

      assert_select "textarea[name=?]", "person[comment]"
    end
  end
end
