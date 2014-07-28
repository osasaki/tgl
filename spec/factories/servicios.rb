# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :servicio do
    nombre { Faker::Name.name }
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','foto_servicio1.jpg'))}
  end
end
