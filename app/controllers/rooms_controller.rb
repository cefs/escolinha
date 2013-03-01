class RoomsController < ApplicationController

   #Load dropdown
   helper_method :teachers, :courses, :disciplines

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

   def destroy
      @room = Room.find params[:id]
      @room.destroy

      redirect_to courses_path
   end

   def teachers
      Teacher.order(:name)
   end

   def courses
      Course.order(:name)
   end

   def disciplines
      Discipline.order(:name)
   end
end