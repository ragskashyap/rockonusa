class ServicesandproductsController < ApplicationController
  # GET /servicesandproducts
  # GET /servicesandproducts.xml
  def index
    @servicesandproducts = Servicesandproduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @servicesandproducts }
    end
  end

  # GET /servicesandproducts/1
  # GET /servicesandproducts/1.xml
  def show
    @servicesandproduct = Servicesandproduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @servicesandproduct }
    end
  end

  # GET /servicesandproducts/new
  # GET /servicesandproducts/new.xml
  def new
    @servicesandproduct = Servicesandproduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @servicesandproduct }
    end
  end

  # GET /servicesandproducts/1/edit
  def edit
    @servicesandproduct = Servicesandproduct.find(params[:id])
  end

  # POST /servicesandproducts
  # POST /servicesandproducts.xml
  def create
    @servicesandproduct = Servicesandproduct.new(params[:servicesandproduct])

    respond_to do |format|
      if @servicesandproduct.save
        flash[:notice] = 'Servicesandproduct was successfully created.'
        format.html { redirect_to(@servicesandproduct) }
        format.xml  { render :xml => @servicesandproduct, :status => :created, :location => @servicesandproduct }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @servicesandproduct.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /servicesandproducts/1
  # PUT /servicesandproducts/1.xml
  def update
    @servicesandproduct = Servicesandproduct.find(params[:id])

    respond_to do |format|
      if @servicesandproduct.update_attributes(params[:servicesandproduct])
        flash[:notice] = 'Servicesandproduct was successfully updated.'
        format.html { redirect_to(@servicesandproduct) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @servicesandproduct.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /servicesandproducts/1
  # DELETE /servicesandproducts/1.xml
  def destroy
    @servicesandproduct = Servicesandproduct.find(params[:id])
    @servicesandproduct.destroy

    respond_to do |format|
      format.html { redirect_to(servicesandproducts_url) }
      format.xml  { head :ok }
    end
  end
end
