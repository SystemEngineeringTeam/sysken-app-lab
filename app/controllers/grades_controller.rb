class GradesController < ApplicationController
  before_action :set_grade, only: [:show]
  def index
    @grades = Grade.all
    render "index", :formats => [:json], :handlers => [:jbuilder]
  end

  def show
    render "show", :formats => [:json], :handlers => [:jbuilder]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end
end

