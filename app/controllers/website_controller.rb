class WebsiteController < ApplicationController
  layout :choose_layout

  def index
    @courses = Course.order(created_at: :DESC).all
    @events = Event.all
    @speakers = Speaker.all
  end

private
  def choose_layout
    'layouts/website/index'
  end
end
