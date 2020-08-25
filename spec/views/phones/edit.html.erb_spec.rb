require 'rails_helper'

RSpec.describe "phones/edit", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      phone_number: "MyString",
      comment: "MyText"
    ))
  end

  it "renders the edit phone form" do
    render

    assert_select "form[action=?][method=?]", phone_path(@phone), "post" do

      assert_select "input[name=?]", "phone[phone_number]"

      assert_select "textarea[name=?]", "phone[comment]"
    end
  end
end
