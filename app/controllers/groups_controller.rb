class GroupsController < ApplicationController
	def index
		groups = Group.all(limit: 5)
		render json: groups, status: 200
	end

	def show
		group = Group.find(params[:id])
		render json: group, status: 200
	end
end
