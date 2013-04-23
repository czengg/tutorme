class TutorsController < ApplicationController
  def new
  	@tutor = Tutor.new
  end

  def create
	@tutor = Tutor.new(params[:tutor])
	if @tutor.save
	  redirect_to '/comingsoon'
	else
	  render 'new'
	end
  end
end
