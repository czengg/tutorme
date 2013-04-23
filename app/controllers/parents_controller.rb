class ParentsController < ApplicationController
  def new
  	@parent = Parent.new
  end

  def create
	@parent = Parent.new(params[:parent])
	if @parent.save
	  redirect_to '/comingsoon'
	else
	  render 'new'
	end
  end
end
