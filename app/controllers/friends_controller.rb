class FriendsController < ApplicationController
  before_action :set_friend, only: %i[ show edit update destroy ]

  def index
    # for _btn_new_friend
    @friends = Friend.order_alphabetical
  end

  def show
  end

  def new
    @friend = Friend.new
  end

  def edit
  end

  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      flash[:notice] = "Friend was successfully created."
      redirect_to @friend
    else
      flash[:alert] = "There was an error creating the friend."
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @friend.update(friend_params)
      flash[:notice] = "Friend was successfully updated."
      redirect_to @friend
    else
      flash[:alert] = "There was an error updating the friend."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @friend.destroy!
    flash[:alert] = "Friend was successfully destroyed."
    redirect_to friends_path, status: :see_other
  end

  private

    def set_friend
      @friend = Friend.find(params[:id])
    end

    def friend_params
      params.require(:friend).permit(:first_name, :last_name, :email, :address)
    end
end
