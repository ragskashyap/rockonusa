class AboutusController < ApplicationController
  # GET /aboutus
  # GET /aboutus.xml
  def index
    @aboutus = Aboutu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aboutus }
    end
  end

  # GET /aboutus/1
  # GET /aboutus/1.xml
  def show
    @aboutu = Aboutu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aboutu }
    end
  end

  # GET /aboutus/new
  # GET /aboutus/new.xml
  def new
    @aboutu = Aboutu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aboutu }
    end
  end

  # GET /aboutus/1/edit
  def edit
    @aboutu = Aboutu.find(params[:id])
  end

  # POST /aboutus
  # POST /aboutus.xml
  def create
    @aboutu = Aboutu.new(params[:aboutu])

    respond_to do |format|
      if @aboutu.save
        format.html { redirect_to(@aboutu, :notice => 'Aboutu was successfully created.') }
        format.xml  { render :xml => @aboutu, :status => :created, :location => @aboutu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aboutu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aboutus/1
  # PUT /aboutus/1.xml
  def update
    @aboutu = Aboutu.find(params[:id])

    respond_to do |format|
      if @aboutu.update_attributes(params[:aboutu])
        format.html { redirect_to(@aboutu, :notice => 'Aboutu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aboutu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aboutus/1
  # DELETE /aboutus/1.xml
  def destroy
    @aboutu = Aboutu.find(params[:id])
    @aboutu.destroy

    respond_to do |format|
      format.html { redirect_to(aboutus_url) }
      format.xml  { head :ok }
    end
  end
end
