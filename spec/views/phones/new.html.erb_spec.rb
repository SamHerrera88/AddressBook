require 'rails_helper'

RSpec.describe "phones/new", type: :view do
  before(:each) do
    assign(:phone, Phone.new(
      phone_number: "MyString",
      comment: "MyText",
      person:nil  
    ))
  end

  it "renders new phone form" do
    render

    assert_select "form[action=?][method=?]", phones_path, "post" do

      assert_select "input[name=?]", "phone[phone_number]"

      assert_select "textarea[name=?]", "phone[comment]"

      assert_select "input[name=?]", "phone[person_id]"
    end
  end
end
