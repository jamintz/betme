class PoolsController < GamesController
  # GET /pools
  # GET /pools.json
  def index
    @pools = Pool.all
  end

  # GET /pools/1
  # GET /pools/1.json
  def show
    @pool = Pool.find(params['id'])
    @props = @pool.props
  end

  # GET /pools/new
  def new
    @pool = Pool.new
  end

  # GET /pools/1/edit
  def edit
  end

  # POST /pools
  # POST /pools.json
  def create
    @pool = Pool.new(pool_params)

    respond_to do |format|
      if @pool.save
        format.html { redirect_to @pool, notice: 'Pool was successfully created.' }
        format.json { render :show, status: :created, location: @pool }
      else
        format.html { render :new }
        format.json { render json: @pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pools/1
  # PATCH/PUT /pools/1.json
  def update
    respond_to do |format|
      if @pool.update(pool_params)
        format.html { redirect_to @pool, notice: 'Pool was successfully updated.' }
        format.json { render :show, status: :ok, location: @pool }
      else
        format.html { render :edit }
        format.json { render json: @pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pools/1
  # DELETE /pools/1.json
  def destroy
    @pool.destroy
    respond_to do |format|
      format.html { redirect_to pools_url, notice: 'Pool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def pick
    gid = params['pool']
    if overtime?(gid)
      respond_to do |format|
         format.html { redirect_to games_url, notice: 'This contest is currently closed' }
       end
    else
      Answer.where(user_id:current_user.id, game_id:gid).destroy_all
      params['props'].each do |prop,choice|
        Answer.create(prop_id:prop,choice_id:choice,user_id:current_user.id,game_id:gid)
      end
      
      respond_to do |format|
         format.html { redirect_to games_url, notice: 'Selection successfully submitted' }
       end
    end
  end
end
