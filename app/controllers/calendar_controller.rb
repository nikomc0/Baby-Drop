class CalendarController < ApplicationController

  def index
    @drop_offs = current_user.drop_off.all
  end

end
