class ModsController < ApplicationController
	def index
		mods = Mod.all(limit: 5)
		render json: mods, status: 200
	end

	def show
		mod = Mod.find(params[:id])
		render json: mod, status: 200
	end
end
