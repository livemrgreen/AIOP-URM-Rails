class ModsController < ApplicationController
	def index
		mods = Mod.all
		if mods
			render json: mods, status: 200
		else
			render json: nil, status: 400
		end
	end
end
