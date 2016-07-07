class RulesController < ApplicationController
 	def index
 		@rules = Rule.all
 	end

	def new
	end

	def show
		@rule = Rule.find(params[:id])
	end

	def edit
	  @rule = Rule.find(params[:id])
	end

	def update
	  @rule = Rule.find(params[:id])
	 
	  if @rule.update(rule_params)
	    redirect_to @rule
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @rule = Rule.find(params[:id])
	  @rule.destroy
	 
	  redirect_to rules_path
	end

	def create
		@rule= Rule.new(rule_params)

		@rule.save
		redirect_to @rule
	end

	private
		def rule_params
		params.require(:rule).permit(:param, :treshold, :users)
  	end
end
