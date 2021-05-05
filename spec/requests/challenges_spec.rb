 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/challenges", type: :request do

  # Challenge. As you add validations to Challenge, be sure to
  # adjust the attributes here as well.
  # let(:valid_attributes) do
  #   {
  #     'title' => 'Test one',
  #     'description' => '12345',
  #     'tags' => '12345',
  #     'user' => current_user
  #   }
  # end
  # let(:invalid_attributes) do
  #   {
  #     'title' => '1',
  #     'description' => '123',
  #     'tags' => '12'
  #   }
  # end
  #  describe "GET /index" do
  #    it "renders a successful response" do
  #      challenge = Challenge.new
  #      {
  #            title: 'Test one',
  #            description: '12345',
  #            tags: '12345',
  #            user: current_user
  #    }
  # #     challenge.user = current_user
  #      challenge.save
  # #     get challenges_url
  #     expect(response).to be_successful
  #    end
  #  end

#    describe "GET /index" do
#     current_user = User.first_or_create(employee_id: "E01", email: "test@example.com",  password: "password", password_confirmation: "password")
  
#      it "renders a successful response" do
#   challenge = Challenge.new
#   {
#         title: 'Test one',
#         description: '12345',
#         user: current_user
# }
# #     challenge.user = current_user
  
# #     get challenges_url
#  expect(challenge.save).to be_successful

#      end
#    end



#    describe "GET /index" do
#   context "when the user is an admin" do
#     it "should list titles of all stories" do
      
#       stories = create_list(:challenge, 10)
      
#       visit challenges_path

#       stories.each do |story|
#         page.should have_content(challenge.title)
#       end
#     end
#   end
# end
  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_challenge_url
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /edit" do
  #   it "render a successful response" do
  #     challenge = Challenge.new(valid_attributes)
  #     challenge.user = current_user
  #     challenge.save
  #     get edit_challenge_url(challenge)
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Challenge" do
  #       expect {
  #         post challenges_url, params: { challenge: valid_attributes }
  #       }.to change(Challenge, :count).by(1)
  #     end

  #     it "redirects to the created challenge" do
  #       post challenges_url, params: { challenge: valid_attributes }
  #       expect(response).to redirect_to(challenge_url(Challenge.last))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new Challenge" do
  #       expect {
  #         post challenges_url, params: { challenge: invalid_attributes }
  #       }.to change(Challenge, :count).by(0)
  #     end

  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post challenges_url, params: { challenge: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested challenge" do
  #       challenge = Challenge.create! valid_attributes
  #       patch challenge_url(challenge), params: { challenge: new_attributes }
  #       challenge.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "redirects to the challenge" do
  #       challenge = Challenge.create! valid_attributes
  #       patch challenge_url(challenge), params: { challenge: new_attributes }
  #       challenge.reload
  #       expect(response).to redirect_to(challenge_url(challenge))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       challenge = Challenge.create! valid_attributes
  #       patch challenge_url(challenge), params: { challenge: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested challenge" do
  #     challenge = Challenge.create! valid_attributes
  #     expect {
  #       delete challenge_url(challenge)
  #     }.to change(Challenge, :count).by(-1)
  #   end

  #   it "redirects to the challenges list" do
  #     challenge = Challenge.create! valid_attributes
  #     delete challenge_url(challenge)
  #     expect(response).to redirect_to(challenges_url)
  #   end
  # end
end