class TabFoodsController < ApplicationController
	def index
		@tabfoods=Tabfoods.all
		respond_to do |format|
			format.html 
			format.xml { render :xml => @tabfoods}
			
		end
	end
		
	end