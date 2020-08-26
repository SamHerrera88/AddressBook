require 'rails_helper'

RSpec.describe "emails/edit", type: :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      email_address: "MyString",
      comment: "MyText",
      person: nil
    ))
  end

  it "renders the edit email form" do
    render

    assert_select "form[action=?][method=?]", email_path(@email), "post" do

      assert_select "input[name=?]", "email[email_address]"

      assert_select "textarea[name=?]", "email[comment]"

      assert_select "input[name=?]", "email[person_id]"

    end
  end
end
