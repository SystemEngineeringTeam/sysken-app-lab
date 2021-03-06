class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    render "index", :formats => [:json], :handlers => [:jbuilder]
  end

  def show
    render "show", :formats => [:json], :handlers => [:jbuilder]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.lab_id.nil?
      @user.lab_id = 0
    end
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
   @user.update(user_params)
   flash[:success] = "プロフィールを更新しました"
    #if @user.update(user_params)
      #render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :gender_id, :grade_id, :lab_id, :context, :email, :password, :password_confirmation, :picture)
    end


