class RoomsController < ApplicationController
   def new
      @room = Room.new
   end

   def create
      @room = Room.new params[:room]

      if @room.save
         flash[:notice] = "Dados enviados com sucesso!"
         redirect_to course_path(@room.course)
      else
         render :new
      end
   end
end