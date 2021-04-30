class ChallengesController < ApplicationController
  before_action :set_challenge, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[index show search]
  before_action :correct_user, only: %i[edit update destroy]


  # GET /challenges or /challenges.json
  def index
    @challenges = Challenge.all
  end

  # GET /challenges/1 or /challenges/1.json
  def show
  end


  # GET /challenges/new
  def new
    #@challenge = Challenge.new
    @challenge = current_user.challenges.build

  end

  # GET /challenges/1/edit
  def edit

  end

  # POST /challenges or /challenges.json
  def create
   # @challenge = Challenge.new(challenge_params)
    
    @challenge = current_user.challenges.build(challenge_params)
    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge, notice: "Challenge was successfully created." }
        format.json { render :show, status: :created, location: @challenge }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challenges/1 or /challenges/1.json
  def update
    respond_to do |format|
      if @challenge.update(challenge_params)
        format.html { redirect_to @challenge, notice: "Challenge was successfully updated." }
        format.json { render :show, status: :ok, location: @challenge }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenges/1 or /challenges/1.json
  def destroy
    @challenge.destroy
    respond_to do |format|
      format.html { redirect_to challenges_url, notice: "Challenge was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @challenge=current_user.challenges.find_by(id: params[:id])
    redirect_to challenges_path, notice: "Not authorize to edit" if @challenge.nil?
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def challenge_params
      params.require(:challenge).permit(:title, :description, :tags, :user_id)
    end
end