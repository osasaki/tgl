# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :cliente do
    link { Faker::Internet.url }
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','foto_servicio1.jpg'))}
  end
end
