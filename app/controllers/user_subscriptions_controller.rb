class UserSubscriptionsController < ApplicationController
  before_action :set_user_subscription, only: [:show, :update, :destroy]

  # GET /user_subscriptions
  def index
    @user_subscriptions = UserSubscription.all

    render json: @user_subscriptions
  end

  # GET /user_subscriptions/1
  def show
    render json: @user_subscription
  end

  # POST /user_subscriptions
  def create
    @user_subscription = UserSubscription.new(user_subscription_params)

    if @user_subscription.save
      render json: @user_subscription, status: :created, location: @user_subscription
    else
      render json: @user_subscription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_subscriptions/1
  def update
    if @user_subscription.update(user_subscription_params)
      render json: @user_subscription
    else
      render json: @user_subscription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_subscriptions/1
  def destroy
    @user_subscription.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subscription
      @user_subscription = UserSubscription.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_subscription_params
      params.require(:user_subscription).permit(:user_id, :subscription_id)
    end
end
