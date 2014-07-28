#Coding: utf-8
class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:new, :create]
  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.mensaje_recibido(@contacto).deliver

        flash[:notice] = "Tu mensaje fue enviado con éxito."
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado el mensaje."
        render :accion => "new"
      end
    end
  end

  def destroy
    destroy!(notice: "Mensaje borrado con éxito.")
  end

end
