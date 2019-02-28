class UsersController < ApplicationController
    def show
      @nickname = current_user.nickname
      @entis = current_user.entis.page(params[:page]).per(5).order("created_at DESC")

    end
  end
