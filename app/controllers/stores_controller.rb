class StoresController < ApplicationController
  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stores }
    end
  end
  # GET /stores/1
  # GET /stores/1.json
  def show
    @store = Store.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store }
    end
  end

  # GET /stores/new
  # GET /stores/new.json
  def new
    @store = Store.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store }
    end
  end

  def showimg
    imgbi = Store.find(params[:id])["img#{params[:number]}"]
    send_data imgbi, :type=>"image/jpeg", :disposition=>'inline'
  end

  
  # GET /stores/1/edit
  def edit
    @store = Store.find(params[:id])
  end
  def getJsonWTImg
    @stores = Store.all
    hashArray = Array.new
    @stores.each do |item|
      itemHash = JSON.parse(item)
      itemHash.delete("img1")
      itemHash.delete("img2")
      itemHash.delete("img3")
      hashArray.push(itemHash)
    end
    respond_to do |format|
      format.json { render json: @hashArray }
    end
  end
  # POST /stores
  # POST /stores.json
  def create
    if params[:store][:img1]!=nil
      img1bi = params[:store][:img1].read
      params[:store][:img1] = img1bi
    end
    if params[:store][:img2]!=nil
      img2bi = params[:store][:img2].read
      params[:store][:img2] = img2bi
    end
    if params[:store][:img3]!=nil
      img3bi = params[:store][:img3].read
      params[:store][:img3] = img3bi
    end
    params[:store][:img1] = img1bi
    
    @store = Store.new(params[:store])

    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, notice: 'Store was successfully created.' }
        format.json { render json: @store, status: :created, location: @store }
      else
        format.html { render action: "new" }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stores/1
  # PUT /stores/1.json
  def update
    @store = Store.find(params[:id])

    respond_to do |format|
      if @store.update_attributes(params[:store])
        format.html { redirect_to @store, notice: 'Store was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store = Store.find(params[:id])
    @store.destroy

    respond_to do |format|
      format.html { redirect_to stores_url }
      format.json { head :no_content }
    end
  end
end
