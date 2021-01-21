class HomeController < ApplicationController
  before_action :authenticate_user!, :only => ['index']

  def index
    @rooms = Room.paginate :page => params[:page],:order => "id"
    @rooms_available = Room.available
    @room_checkin = Hash.new
    Checkin.where("status is NULL").each do |c|
      c.line_items.each do |li|
        if not li.freez 
          @room_checkin[li.room] = c
        end
      end
    end

  end

  def login
    respond_to do |format|
      format.html { 
        if user_signed_in?
          redirect_to user_root_path
        else
          render :layout => 'user'
        end
      }
    end
    
  end

end
