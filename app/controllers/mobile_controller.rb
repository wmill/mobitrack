class MobileController < ApplicationController
  def index
    @convention_delegates = ConventionDelegate.all

    respond_to do |format|
      format.html # index_mobile.html.erb
      format.json { render json: @convention_delegates }
    end
 
  end

  def show
    @convention_delegate = ConventionDelegate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @convention_delegate }
    end
  end

  def observe
    @convention_delegate = ConventionDelegate.find(params[:id])
  end

  # POST /mobile/1
  # POST /mobile/1.json
  # need to find a way for this to be routed properly
  # also it's not working yet
  def create_observation
    @convention_delegate = ConventionDelegate.find(params[:id])
    logger.debug "The object is..." + params.inspect
    logger.debug "\n"
    logger.debug params['observation']['value'].inspect
    logger.debug "\n"
    params['observation']
    observation_data = {
        :convention_delegate_id => params[:id],
        :user_id => 1, #not actually implemented yet
        :ip_address => request.remote_ip,
        :user_agent => request.env['HTTP_USER_AGENT'],
        :value => Integer(params['observation']['value'])
    } 
    @observation = Observation.new(observation_data)

    respond_to do |format|
      if @observation.save
        format.html { redirect_to '/mobile/', notice: 'Observation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @convention_delegate.errors, status: :unprocessable_entity }
      end
    end
  end
end
