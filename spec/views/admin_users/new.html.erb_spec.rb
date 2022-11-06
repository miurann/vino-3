require 'rails_helper'

RSpec.describe "admin_users/new", type: :view do
  before(:each) do
    assign(:admin_user, AdminUser.new(
      email: "MyString",
      crypted_password: "MyString",
      salt: "MyString",
      name: "MyString"
    ))
  end

  it "renders new admin_user form" do
    render

    assert_select "form[action=?][method=?]", admin_users_path, "post" do

      assert_select "input[name=?]", "admin_user[email]"

      assert_select "input[name=?]", "admin_user[crypted_password]"

      assert_select "input[name=?]", "admin_user[salt]"

      assert_select "input[name=?]", "admin_user[name]"
    end
  end
end
