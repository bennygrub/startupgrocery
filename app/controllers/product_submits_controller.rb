class ProductSubmitsController < ApplicationController
  before_action :set_product_submit, only: [:show, :edit, :update, :destroy]

  # GET /product_submits
  # GET /product_submits.json
  def index
    @product_submits = ProductSubmit.all
  end

  # GET /product_submits/1
  # GET /product_submits/1.json
  def show
  end

  # GET /product_submits/new
  def new
    @product_submit = ProductSubmit.new
  end

  # GET /product_submits/1/edit
  def edit
  end

  # POST /product_submits
  # POST /product_submits.json
  def create
    @product_submit = ProductSubmit.new(product_submit_params)

    respond_to do |format|
      if @product_submit.save
        format.html { redirect_to pages_contact_path, notice: 'Product submit was successfully submitted.' }
        format.json { render :show, status: :created, location: pages_contact_url }
      else
        format.html { render :new }
        format.json { render json: @product_submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_submits/1
  # PATCH/PUT /product_submits/1.json
  def update
    respond_to do |format|
      if @product_submit.update(product_submit_params)
        format.html { redirect_to @product_submit, notice: 'Product submit was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_submit }
      else
        format.html { render :edit }
        format.json { render json: @product_submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_submits/1
  # DELETE /product_submits/1.json
  def destroy
    @product_submit.destroy
    respond_to do |format|
      format.html { redirect_to product_submits_url, notice: 'Product submit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_submit
      @product_submit = ProductSubmit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_submit_params
      params.require(:product_submit).permit(:name, :email, :product_name, :description, :image, :url)
    end
end
