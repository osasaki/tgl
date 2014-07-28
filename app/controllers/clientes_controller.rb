class ClientesController < InheritedResources::Base
  before_filter :authenticate_admin!
  def create
    create!(notice: "Se ha creado el cliente"){ clientes_path }
  end

  def update
    update!(notice: "El cliente se ha editado"){ clientes_path }
  end

  def destroy
    destroy!(notice: "El cliente se ha eliminado"){ clientes_path }
  end
end
