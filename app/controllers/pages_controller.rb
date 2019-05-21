class PagesController < ApplicationController
  def index
  	@courses = Course.all
  end
end
