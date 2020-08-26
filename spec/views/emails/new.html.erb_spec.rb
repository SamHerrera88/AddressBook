require 'rails_helper'

RSpec.describe "emails/new", type: :view do
  before(:each) do
    assign(:email, Email.new(
      email_address: "MyString",
      comment: "MyText",
      person: nil
    ))
  end

  it "renders new email form" do
    render

    assert_select "form[action=?][method=?]", emails_path, "post" do

      assert_select "input[name=?]", "email[email_address]"

      assert_select "textarea[name=?]", "email[comment]"

      assert_select "input[name=?]", "email[person_id]"

    end
  end
end
