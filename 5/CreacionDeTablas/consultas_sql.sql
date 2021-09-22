-- Listar todas las mascotas:
-- select * from mascota;

-- Listar las mascotas que no han sido adoptadas
-- select * from mascota where propietario is null

-- Listar el número de mascotas por cada tipo de mascota.
-- SELECT tipo_mascota, descripcion, COUNT(*)  from mascota inner join tipo_mascota on tipo_mascota = idtipo_mascota group by tipo_mascota

-- Listar los propietarios que tengan más de una mascota.
-- SELECT propietario.* FROM propietario left join mascota on propietario = idpropietario group by idpropietario having count(*) >1

-- Listar el número de mascotas por cada tipo de mascota y por cada propietario.
-- SELECT tipo_mascota, descripcion, COUNT(*)  from mascota inner join tipo_mascota on tipo_mascota = idtipo_mascota inner join propietario on propietario=idpropietario group by tipo_mascota

-- Listar los propietarios que no tienen mascotas.
-- Select * from propietario where not exists (select propietario from mascota where idpropietario = propietario)