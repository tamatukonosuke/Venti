class EntisController < ApplicationController

before_action :move_to_index, except: :index


def index
    @entis = Enti.order("created_at DESC").page(params[:page]).per(5)
    # binding.pry
  end



  def new
  end

def create
      Enti.create(name: enti_params[:name], text: enti_params[:text], user_id: current_user.id)
    end

    def destroy
      enti = Enti.find(params[:id])
      if enti.user_id == current_user.id
        enti.destroy
      end
    end

def edit
      @enti = Enti.find(params[:id])
end

   def update
      enti = Enti.find(params[:id])
      if enti.user_id == current_user.id
        enti.update(enti_params)
      end
    end

private
    def enti_params
      params.permit(:text)
    end

 def move_to_index
  redirect_to action: :index unless user_signed_in?
 end



end
