class Api::V1::ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
    render json: { status: 'SUCCESS', message: 'Loaded challenges', data:@challenges}, status: :ok
  end 

  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      render json: { status: 'SUCCESS', message: 'Saved challenge', data:@challenge}, status: :ok
    else
      render json: { status: 'ERROR', message: 'challenge not Saved', data:@challenge.errors }, status: :unprocessable_entity
    end
  end

  def update
    @challenge = Challenge.find(params[:id])
    if @challenge.update_attributes(challenge_params)
      render json: { status: 'SUCCESS', message: 'Updated challenge', data:@challenge}, status: :ok
    else
      render json: { status: 'ERROR', message: 'challenge not Updated', data:@challenge.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    render json: { status: 'SUCCESS', message: 'Deleted challenge', data:@challenge}, status: :ok
  end

  def show
    @challenge = Challenge.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded challenge', data:@challenge}, status: :ok
  end

  private

  def challenge_params
    params.require(:challenge).permit(:title, :description, :tag, :user_id)
  end
  
end