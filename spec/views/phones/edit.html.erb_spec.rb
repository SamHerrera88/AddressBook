require 'rails_helper'

RSpec.describe "phones/edit", type: :view do
  before(:each) do
    @person = FactoryBot.create(:person)
    @phone = assign(:phone, Phone.create!(
      phone_number: "MyString",
      comment: "MyText",
      person: @person,
    ))
  end

  it "renders the edit phone form" do
    render

    assert_select "form[action=?][method=?]", person_phone_path(@person, @phone), "post" do

      assert_select "input[name=?]", "phone[phone_number]"

      assert_select "textarea[name=?]", "phone[comment]"

      assert_select "input[name=?]", "phone[person_id]"

    end
  end
end
