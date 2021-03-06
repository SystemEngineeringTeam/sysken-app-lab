class LabsController < ApplicationController
  before_action :set_lab, only: [:show, :edit, :update, :destroy]
  
  def index
    @labs = Lab.all
    render "index", :formats => [:json], :handlers => [:jbuilder]
  end

  def show
    render "show", :formats => [:json], :handlers => [:jbuilder]
  end

  def new
    @lab = Lab.new
  end

  def create
    @lab = Lab.new(lab_params)
    if @lab.save
      redirect_to @lab
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @lab.update(lab_params)
      render :show, status: :ok, location: @lab
    else
      render json: @lab.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @lab.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab
      @lab = Lab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_params
      params.require(:lab).permit(:lab, :university_id, :overview, :picture)
    end
end
