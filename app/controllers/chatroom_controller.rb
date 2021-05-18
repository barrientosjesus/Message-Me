class ChatroomController < ApplicationController

  before_action :require_user, only: [:edit, :update]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
    if !logged_in?
      redirect_to login_path
    else
      @users = User.all
      @message = Message.new
      @messages = Message.custom_display
    end
  end
end