class TermsController < ApplicationController
  # GET /terms
  # GET /terms.xml
  def index
    @terms = Term.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @terms }
    end
  end
end