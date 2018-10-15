class ReviewsController < ApplicationController
  before_action :set_reviews
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET products/1/reviews
  def index
    @reviews = @products.reviews
  end

  # GET products/1/reviews/1
  def show
  end

  # GET products/1/reviews/new
  def new
    @review = @products.reviews.build
  end

  # GET products/1/reviews/1/edit
  def edit
  end

  # POST products/1/reviews
  def create
    @review = @products.reviews.build(review_params)

    if @review.save
      redirect_to([@review.products, @review], notice: 'Review was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT products/1/reviews/1
  def update
    if @review.update_attributes(review_params)
      redirect_to([@review.products, @review], notice: 'Review was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE products/1/reviews/1
  def destroy
    @review.destroy

    redirect_to products_reviews_url(@products)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviews
      @products = Product.find(params[:products_id])
    end

    def set_review
      @review = @products.reviews.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:product_id, :user_id, :description, :rating)
    end
end
