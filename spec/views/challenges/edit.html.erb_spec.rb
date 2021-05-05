require 'rails_helper'

RSpec.describe "challenges/edit", type: :view do
  current_user = User.first_or_create(email: "test@example.com", employee_id: "E001", password: "password", password_confirmation: "password")

  before(:each) do
    @challenge = assign(:challenge, Challenge.create!(
      title: "MyString",
      description: "MyString",
      user: current_user,
      tags: "MyString"
    ))
  end
  
  it "renders the edit challenge form" do
    render

    assert_select "form[action=?][method=?]", challenge_path(@challenge), "post" do

      assert_select "input[name=?]", "challenge[title]"

      assert_select "input[name=?]", "challenge[description]"

    end
  end
end
