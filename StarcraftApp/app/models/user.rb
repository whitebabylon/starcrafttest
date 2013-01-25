class User < ActiveRecord::Base
	set_table_name "starusers"
attr_accessible :username, :email, :password, :password_confirmation
acts_as_authentic

end