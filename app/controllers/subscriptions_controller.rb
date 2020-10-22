class SubscriptionsController < ApplicationController
  # before_action :set_subscription, only: [:show, :update, :destroy]

  # GET /subscriptions
  def index
    @subscriptions = Subscription.all

    render json: @subscriptions
  end

  # GET /subscriptions/1
  def show
    render json: @subscription
  end

  # POST /subscriptions
  def create
    @subscription = Subscription.create(subscription_params)
    render json: @subscription
  end

  # PATCH/PUT /subscriptions/1
  def update
    @subscription = Subscription.find(params[:id])
    @subscription.update(subscription_params)
    render json: @subscription
  end

  # DELETE /subscriptions/1
  def destroy

    @subscription = Subscription.find(params[:id])
    
    @subscription.destroy
    render json: @subscription
  end

  private
    # # Use callbacks to share common setup or constraints between actions.
    # def set_subscription
    #   @subscription = Subscription.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def subscription_params
      params.permit(:name, :image, :description, :category, :date, :amount)
    end
end
