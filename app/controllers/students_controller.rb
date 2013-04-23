class StudentsController < ApplicationController
  def new
  	@student = Student.new
  end

  def create
	@student = Student.new(params[:student])
	if @student.save
	  redirect_to '/comingsoon'
	else
	  render 'new'
	end
  end
end
