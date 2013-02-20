class RoomsController < ApplicationController
   def new
      @room = Room.new
   end

   def create
      @room = Room.create params[:room]
      flash[:notice] = "Dados enviados com sucesso!"
      redirect_to course_path(@room.course)
   end
end