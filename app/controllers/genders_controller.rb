class GendersController < ApplicationController
  before_action :set_gender, only: [:show]
  def index
    @genders = Gender.all
    render "index", :formats => [:json], :handlers => [:jbuilder]
  end

  def show
    render "show", :formats => [:json], :handlers => [:jbuilder]
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_gender
      @gender = Gender.find(params[:id])
    end
end

