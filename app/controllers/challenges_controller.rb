class ChallengesController < ApplicationController
  respond_to :js, :html, :json
  before_action :set_challenge, only: %i[ show edit update destroy upvote follow current_user]
 # before_action :new_index, only: %i[ index new ]
  before_action :authenticate_user!, except: %i[show search]
  before_action :correct_user, only: %i[edit update destroy]
  helper_method :sort_column, :sort_direction


  # GET /challenges or /challenges.json
  def index
    @challenges = Challenge.all.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
    @challenge = current_user.challenges.build

   # sorted = @challenges.sort_by &:tags
  end
  
  # GET /challenges/1 or /challenges/1.json
  def show
  end


  # GET /challenges/new
  def new
    @challenges = Challenge.all.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
    @challenge = current_user.challenges.build

    
  end

  # GET /challenges/1/edit
  def edit
    unless current_user 
      redirect_to challenge_path, :alert => "Restricted area" 
    end
  end

  # POST /challenges or /challenges.json
  def create
   # @challenge = Challenge.new(challenge_params)
   @challenges = Challenge.all

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
    unless current_user 
      redirect_to challenge_path, :alert => "Restricted area" 
    end
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
  def upvote
    @challenge = Challenge.find(params[:id])
    @challenge.upvote_by current_user
    redirect_to challenges_path 
  end
  def follow
    @challenge = Challenge.find(params[:id])
    
    current_user.follow(@challenge)
    redirect_to challenges_path 
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end
    # def new_index
    #   @challenges = Challenge.all.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
    #   @challenge = current_user.challenges.build

    # end  
    def sort_column
      Challenge.column_names.include?(params[:sort]) ? params[:sort] : "title"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Only allow a list of trusted parameters through.
    def challenge_params
      params.require(:challenge).permit(:title, :description, :tags, :user_id)
    end
end
