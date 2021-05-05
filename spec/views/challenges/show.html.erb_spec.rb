require 'rails_helper'

RSpec.describe "challenges/show", type: :view do
  current_user = User.first_or_create(email: "test@example.com", employee_id: "E001", password: "password", password_confirmation: "password")

  before(:each) do
    @challenge = assign(:challenge, Challenge.create!(
      title: "Title",
      description: "Description",
      user: current_user,
      tags: "it is Tag"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Tag/)
  end
end
require "spec_helper"

