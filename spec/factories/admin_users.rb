FactoryGirl.define do
  factory :admin_user do
    email 'adminuser@example.com'
    password "password"
    password_confirmation "password"
    first_name "John"
    last_name "Doe"
    username "strange"
  end
end