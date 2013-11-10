class DishesController < ApplicationController
  # GET /dishes
  # GET /dishes.json
  def index
    @dishes = Dish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dishes }
    end
  end

  def admin
    @dishes = Dish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dishes }
    end
  end

  def showimg
    imgbi = Dish.find(params[:id])[:img]
    send_data imgbi, :type=>"image/jpeg", :disposition=>'inline'
  end
  # GET /dishes/1
  # GET /dishes/1.json
  def show
    @dish = Dish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dish }
    end
  end

  # GET /dishes/new
  # GET /dishes/new.json
  def new
    @dish = Dish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dish }
    end
  end

  # GET /dishes/1/edit
  def edit
    @dish = Dish.find(params[:id])
  end

  # POST /dishes
  # POST /dishes.json
  def create
    imgbi = params[:dish][:img].read
    params[:dish][:img] = imgbi
    @dish = Dish.new(params[:dish])

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: 'Dish was successfully created.' }
        format.json { render json: @dish, status: :created, location: @dish }
      else
        format.html { render action: "new" }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  def getJsonWTImg
    @dishes = Dish.select("name, price, store_id").all
    # stringArray = Array.new
    @dishes.each do |item|
      # item2 = JSON.parse(item.to_json)
      # item2.delete("img")
      # item2["store_name"] = item.store.name
      # stringArray.push(item2)
      item["store_name"] = item.store.name
    end
    respond_to do |format|
      # format.json { render json: stringArray}
      format.json { render json: @dishes}
    end
  end

  def getJsonWTImg2
    @dishes = Dish.limit(5).offset(params[:id]).select("name, price, store_id")
    @dishes.each do |item|
      item["store_name"] = item.store.name
    end
    respond_to do |format|
      # format.json { render json: stringArray}
      format.json { render json: @dishes}
    end
  end

  def storeDishesWTImg
    @dishes = Dish.where( :store_id => params[:id] )
    hashArray = Array.new
    @dishes.each do |item|
      itemHash = JSON.parse(item.to_json)
      itemHash.delete("img")
      hashArray.push(itemHash)
    end
    respond_to do |format|
      format.json { render json: hashArray }
    end
  end
  # PUT /dishes/1
  # PUT /dishes/1.json
  def update
    @dish = Dish.find(params[:id])

    respond_to do |format|
      if @dish.update_attributes(params[:dish])
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy

    respond_to do |format|
      format.html { redirect_to dishes_url }
      format.json { head :no_content }
    end
  end
end
