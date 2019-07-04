class SecondCommentsController < ApplicationController
  before_action :set_second_comment, only: [:update, :destroy]
  before_action :set_second_product
  before_action :authenticate_user!
  # POST /second_comments
  # POST /second_comments.json
  def create
    @second_comment = current_user.second_comments.new(second_comment_params)
    @second_comment.product = @product
    respond_to do |format|
      if @second_comment.save
        format.html { redirect_to @second_comment.product, notice: 'Second comment was successfully created.' }
        format.json { render :show, status: :created, location: @second_comment }
      else
        format.html { render :new }
        format.json { render json: @second_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /second_comments/1
  # PATCH/PUT /second_comments/1.json
  def update
    respond_to do |format|
      if @second_comment.update(second_comment_params)
        format.html { redirect_to @second_comment.product, notice: 'Second comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @second_comment }
      else
        format.html { render :edit }
        format.json { render json: @second_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_comments/1
  # DELETE /second_comments/1.json
  def destroy
    @second_comment.destroy
    respond_to do |format|
      format.html { redirect_to @product, notice: 'Second comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_second_product
      @product = Product.find(params[:product_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_second_comment
      @second_comment = SecondComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_comment_params
      params.require(:second_comment).permit(:user_id, :product_id, :body)
    end
end
