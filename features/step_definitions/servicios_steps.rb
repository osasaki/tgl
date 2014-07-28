Cuando(/^lleno el formulario con los datos del servicio$/) do
  fill_in "Nombre", :with => "servicio"
  attach_file("Foto", File.expand_path("features/support/foto_servicio1.jpg"))
end

Dado(/^que existe un servicio$/) do
  Servicio.create(:nombre => "servicio",
                  :foto => File.new("features/support/foto_servicio1.jpg")).save!
end

Cuando(/^uso el nombre "(.*?)"$/) do |valor|
  fill_in "Nombre", :with => valor
end

Cuando(/^uso la foto "(.*?)"$/) do |archivo|
  attach_file("Foto", File.expand_path("features/support/" + archivo))
end
