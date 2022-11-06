require 'rails_helper'

RSpec.describe "admin_users/edit", type: :view do
  let(:admin_user) {
    AdminUser.create!(
      email: "MyString",
      crypted_password: "MyString",
      salt: "MyString",
      name: "MyString"
    )
  }

  before(:each) do
    assign(:admin_user, admin_user)
  end

  it "renders the edit admin_user form" do
    render

    assert_select "form[action=?][method=?]", admin_user_path(admin_user), "post" do

      assert_select "input[name=?]", "admin_user[email]"

      assert_select "input[name=?]", "admin_user[crypted_password]"

      assert_select "input[name=?]", "admin_user[salt]"

      assert_select "input[name=?]", "admin_user[name]"
    end
  end
end
