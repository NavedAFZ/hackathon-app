# require 'rails_helper'

# RSpec.describe "challenges/index", type: :view do
#   current_user = User.first_or_create(email: "test@example.com", employee_id: "E001", password: "password", password_confirmation: "password")

#   before(:each) do
#     assign(:challenges, [
#       Challenge.create!(
#         title: "Title1",
#         description: "Description",
#         user: current_user,
#         tags: "it is Tag"
#       ),
#       Challenge.create!(
#         title: "Title",
#         description: "Description",
#         user: current_user,
#         tags: "it is Tag"
#       )
#     ])
#   end

#   it "renders a list of challenges" do
#     render
#     assert_select "tr>td", text: "Title".to_s, count: 2
#     assert_select "tr>td", text: "Description".to_s, count: 2
#     assert_select "tr>td", text: "Tags".to_s, count: 2
#   end
# end
