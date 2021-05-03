
require 'rails_helper'

RSpec.describe Challenge, type: :model do
  current_user = User.first_or_create!(email: 'dean@example.com',employee_id:'E01', password: 'password', password_confirmation: 'password')

  it 'has a title' do
    post = Challenge.new(
      title: '',
      description: 'A Valid Body',
      user: current_user
    )
    expect(post).to_not be_valid

    post.title = 'Has a title'
    expect(post).to be_valid
  end
  it 'has a body' do
    post = Challenge.new(
      title: 'A Valid Title',
      description: '',
      user: current_user
    )
    expect(post).to_not be_valid

    post.description = 'Has a title'
    expect(post).to be_valid
  end

  it 'has a title at least 4 characters long' do
    post = Challenge.new(
      title: '1',
      description: 'A Valid Body',
      user: current_user    )
    expect(post).to_not be_valid

    post.title = '1236'
    expect(post).to be_valid
  end

  it 'has a description between 4 and 100 characters' do
    post = Challenge.new(
      title: '1234',
      description: '123',
      user: current_user
    )
    expect(post).to_not be_valid

    post.description = '123456'
    expect(post).to be_valid

    hundred_char_string = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m'
    post.description = hundred_char_string
    expect(post).to be_valid

    post.description = hundred_char_string + '1'
    expect(post).to_not be_valid
  end

#   it 'has numerical views' do
#     post = Post.new(
#       title: '12',
#       body: '1234',
#       user: current_user,
#       views: 0
#     )
#     expect(post.views).to be_a(Integer)
#   end
end