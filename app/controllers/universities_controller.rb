class UniversitiesController < ApplicationController
  before_action :set_university, only: [:show, :edit, :update, :destroy]

  def index
    @universities = University.all
    render "index", :formats => [:json], :handlers => [:jbuilder]
  end

  def show
    render "show", :formats => [:json], :handlers => [:jbuilder]
  end

  def new
    @university = University.new
  end

  def create
    @university = University.new(university_params)
    if @university.lab_id.nil?
      @university.lab_id = 0
  end
    if @uniersity.save
      log_in @university
      redirect_to @university
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @university.update(university_params)
      render :show, status: :ok, location: @university
    else
      render json: @university.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @university.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
    def university_params
      params.require(:university).permit(:name, :email, :gender_id, :grade_id, :lab_id, :password, :password_confirmation)
    end


end

