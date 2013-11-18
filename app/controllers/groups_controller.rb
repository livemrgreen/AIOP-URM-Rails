class GroupsController < ApplicationController
	def index
		groups = Group.all
		if groups
			render json: groups, status: 200
		else
			render json: nil, status: 400
		end
	end
end
