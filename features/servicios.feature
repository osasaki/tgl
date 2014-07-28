#language: es

Característica: Administracion de los sevicios

Escenario: Crear servicio
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Servicios"
  Y hago click en "Crear Servicio"
  Y lleno el formulario con los datos del servicio
  Cuando presiono "Guardar"
  Entonces debería ver "Se ha creado el servicio"

Escenario: Editar Servicio
  Dado que existe un servicio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Servicios"
  Y hago click en "Editar"
  Y uso el nombre "Nuevo servicio"
  Y uso la foto "foto_servicio2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "El servicio se ha editado"

Escenario: Eliminar Servicio
  Dado que existe un servicio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Servicios"
  Y hago click en "Eliminar"
  Entonces debería ver "El servicio se ha eliminado"
