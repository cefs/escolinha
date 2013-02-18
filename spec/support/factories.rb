# encoding: UTF-8

FactoryGirl.define do
   factory :teacher do
      name "Áthila Soáres"
   end

   factory :student do
      name "Carlos Eduardo"
   end

   factory :course do
      name "Turma 1"
   end

   factory :discipline do
      name "Banco de Dados"
   end
end