#Coding: utf-8
require 'factory_girl'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

12.times do
  FactoryGirl.create :contacto
end

12.times do
  FactoryGirl.create :servicio
end

10.times do
  FactoryGirl.create :cliente
end
