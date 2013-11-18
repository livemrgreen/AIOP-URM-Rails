class Teacher < ActiveRecord::Base
	belongs_to :user, :dependent => :delete
	has_many :modules, :class_name => "Mod", :foreign_key => "module_id"
end
