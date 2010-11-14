class HomeController < ApplicationController
  # GET /homes
  # GET /homes.xml
  def index
    @homes = Home.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @home }
    end
  end
end
