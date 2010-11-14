class DisclaimersController < ApplicationController
  # GET /disclaimers
  # GET /disclaimers.xml
  def index
    @disclaimers = Disclaimer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @disclaimers }
    end
  end
 end
