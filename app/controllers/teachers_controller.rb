class TeachersController < ApplicationController
   def index
      @teachers = Teacher.paginate :page => params[:page], :size => 10
   end

   def show
      @teacher = Teacher.find params[:id]      

      @rooms = Room.select("discipline_id, course_id").where("teacher_id = ?", @teacher.id)
   end

   def new
      @teacher = Teacher.new
   end

   def create
      @teacher = Teacher.new params[:teacher]      

      if @teacher.save
         flash[:notice] = t("flash.teachers.create.notice")
         redirect_to teachers_path
      else
         render :new
      end
   end

      def edit
         @teacher = Teacher.find params[:id]      
      end

      def update
         @teacher = Teacher.find params[:id]

         if @teacher.update_attributes  params[:teacher]
            flash[:notice] = t("flash.teachers.update.notice")
            redirect_to teachers_path
         else
            render :edit
         end
      end
end