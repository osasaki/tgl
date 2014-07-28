class Servicio < ActiveRecord::Base
  attr_accessible :foto, :nombre

  mount_uploader :foto, FotoUploader
end
