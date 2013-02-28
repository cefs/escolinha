class DisciplinesController < ApplicationController
   def index
      @disciplines = Discipline.paginate :page => params[:page], :size => 4   
   end

   def new
      @discipline = Discipline.new
   end

   def create
      @discipline = Discipline.new params[:discipline]

      if @discipline.save
         flash[:notice] = t("flash.disciplines.create.notice")
         redirect_to disciplines_path
      else
         render :new
      end
   end

   def edit
      @discipline = Discipline.find params[:id]
   end

   def update
      @discipline = Discipline.find params[:id]

      if @discipline.update_attributes params[:discipline]
         redirect_to disciplines_path
         flash[:notice] = t("flash.disciplines.update.notice")
      else
         render :edit
      end
   end
end