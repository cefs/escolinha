#encoding: UTF-8

class MatriculandoMailer < ActionMailer::Base
   default from: "escolinha.rails@gmail.com"

   def email_do_matriculado(student)
      @matriculando = student

      mail(:to => @matriculando.email,
         :subject => "Bem vindo(a), você foi matrículado(a) com sucesso - #{@matriculando.name}")
   end   
end