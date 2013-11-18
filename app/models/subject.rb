class Subject < ActiveRecord::Base
	belongs_to :mod, :class_name => "Mod", :foreign_key => "module_id"
	has_many :lessons
end
