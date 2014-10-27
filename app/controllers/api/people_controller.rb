class Api::PeopleController < ApplicationController
  def index
  	@people = Person.all
  	respond_to do |format|
  		format.json { render json: @people }
  	end
  end

  def create
  	@person = Person.new(params[:person])
  	respond_to do |format|
  		if @person.save
  			format.json { render json: @person, status: :created }
  		else 
  			format.json { render json: @person.errors, status: :unprocessable_entity }
  		end
  	end
  end
end
