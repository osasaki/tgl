class ContactoMailer < ActionMailer::Base
  default from: "info@kosmyka.com"
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "o0.sasaki@gmail.com", :subject => "Mensajes desde la web", :replay_to => contacto.email, :from => "o0.sasaki@gmail.com")
  end
end
