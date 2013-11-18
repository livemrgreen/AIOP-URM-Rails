class Mod < ActiveRecord::Base
	belongs_to :module_manager, :class_name => "Teacher",
				:foreign_key => "module_manager_id", :dependent => :delete

	has_many :subjects, :foreign_key => "module_id"
end
