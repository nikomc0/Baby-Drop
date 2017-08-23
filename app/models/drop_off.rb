class DropOff < ActiveRecord::Base
  belongs_to :user
  def child
    @user = User.find(param[:id])
  end
end
