class ServiciosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index]
  def create
    create!(notice: "Se ha creado el servicio"){ servicios_path }
  end

  def update
    update!(notice: "El servicio se ha editado"){ servicios_path }
  end

  def destroy
    destroy!(notice: "El servicio se ha eliminado"){ servicios_path }
  end
end
