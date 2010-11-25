class PastprojectsController < ApplicationController
  # GET /pastprojects
  # GET /pastprojects.xml
  def index
    @pastprojects = Pastproject.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pastprojects }
    end
  end

  # GET /pastprojects/1
  # GET /pastprojects/1.xml
  def show
    @pastproject = Pastproject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pastproject }
    end
  end

  # GET /pastprojects/new
  # GET /pastprojects/new.xml
  def new
    @pastproject = Pastproject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pastproject }
    end
  end

  # GET /pastprojects/1/edit
  def edit
    @pastproject = Pastproject.find(params[:id])
  end

  # POST /pastprojects
  # POST /pastprojects.xml
  def create
    @pastproject = Pastproject.new(params[:pastproject])

    respond_to do |format|
      if @pastproject.save
        flash[:notice] = 'Pastproject was successfully created.'
        format.html { redirect_to(@pastproject) }
        format.xml  { render :xml => @pastproject, :status => :created, :location => @pastproject }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pastproject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pastprojects/1
  # PUT /pastprojects/1.xml
  def update
    @pastproject = Pastproject.find(params[:id])

    respond_to do |format|
      if @pastproject.update_attributes(params[:pastproject])
        flash[:notice] = 'Pastproject was successfully updated.'
        format.html { redirect_to(@pastproject) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pastproject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pastprojects/1
  # DELETE /pastprojects/1.xml
  def destroy
    @pastproject = Pastproject.find(params[:id])
    @pastproject.destroy

    respond_to do |format|
      format.html { redirect_to(pastprojects_url) }
      format.xml  { head :ok }
    end
  end
end
