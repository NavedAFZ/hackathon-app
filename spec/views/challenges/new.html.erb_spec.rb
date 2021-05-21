# require 'rails_helper'

# RSpec.describe "challenges/new", type: :view do
#   current_user = User.first_or_create(email: "test@example.com", employee_id: "E001", password: "password", password_confirmation: "password")

#   before(:each) do
#     assign(:challenge, Challenge.new(
#       title: "MyString",
#       description: "MyString",
#       user: current_user,
#       tags: "MyString"
#     ))
#   end

#   it "renders new challenge form" do
#     render

#     assert_select "form[action=?][method=?]", challenges_path, "post" do

#       assert_select "input[name=?]", "challenge[title]"

#       assert_select "input[name=?]", "challenge[description]"

#     end
#   end
# end
