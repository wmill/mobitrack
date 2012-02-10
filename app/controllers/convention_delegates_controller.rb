class ConventionDelegatesController < ApplicationController
  # GET /convention_delegates
  # GET /convention_delegates.json
  def index
    @convention_delegates = ConventionDelegate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @convention_delegates }
    end
  end

  # GET /convention_delegates/index_mobile
  # GET /convention_delegates/index_mobile.json
  def index_mobile
    @convention_delegates = ConventionDelegate.all

    respond_to do |format|
      format.html # index_mobile.html.erb
      format.json { render json: @convention_delegates }
    end
  end

  # GET /convention_delegates/1
  # GET /convention_delegates/1.json
  def show
    @convention_delegate = ConventionDelegate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @convention_delegate }
    end
  end

  # GET /convention_delegates/new
  # GET /convention_delegates/new.json
  def new
    @convention_delegate = ConventionDelegate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @convention_delegate }
    end
  end

  # GET /convention_delegates/1/edit
  def edit
    @convention_delegate = ConventionDelegate.find(params[:id])
  end

  # POST /convention_delegates
  # POST /convention_delegates.json
  def create
    @convention_delegate = ConventionDelegate.new(params[:convention_delegate])

    respond_to do |format|
      if @convention_delegate.save
        format.html { redirect_to @convention_delegate, notice: 'Convention delegate was successfully created.' }
        format.json { render json: @convention_delegate, status: :created, location: @convention_delegate }
      else
        format.html { render action: "new" }
        format.json { render json: @convention_delegate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /convention_delegates/1
  # PUT /convention_delegates/1.json
  def update
    @convention_delegate = ConventionDelegate.find(params[:id])

    respond_to do |format|
      if @convention_delegate.update_attributes(params[:convention_delegate])
        format.html { redirect_to @convention_delegate, notice: 'Convention delegate was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @convention_delegate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convention_delegates/1
  # DELETE /convention_delegates/1.json
  def destroy
    @convention_delegate = ConventionDelegate.find(params[:id])
    @convention_delegate.destroy

    respond_to do |format|
      format.html { redirect_to convention_delegates_url }
      format.json { head :ok }
    end
  end
end
