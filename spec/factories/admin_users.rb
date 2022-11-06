FactoryBot.define do
  factory :admin_user do
    name { "MyString" }
    email { "MyString" }
    crypted_password { "MyString" }
    salt { "MyString" }
  end
end
