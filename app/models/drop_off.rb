class DropOff < ActiveRecord::Base
  belongs_to :user

  default_scope { order('start_time DESC')}
end
