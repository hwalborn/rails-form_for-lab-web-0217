class SchoolClassesController < ApplicationController
  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@class)
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(params.require(:school_class))
    redirect_to school_class_path(@class)
  end
end
