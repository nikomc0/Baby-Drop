class CalendarController < ApplicationController
  def index
    @drop_offs = DropOff.all
  end
end
