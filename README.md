# CFE Control (Nombre clave de la palicación)
![Estado](https://img.shields.io/badge/Estado-En%20desarrollo-blue.svg)

CFE Control es una aplicación elaborada sobre Ruby on Rails, la cual aun estamos trabajando en su desarrollo. Nuestro objetivo con este proyecto es facilitar el trabajo que se realiza en Comisión Federal de Electricidad en la zona Zapotlán (el programa se adaptará a las necesidades de esta zona), de forma que los trabajadores puedan realizar sus debidas tareas en las subestaciones y recolectar datos que serán procesados por la aplicación para generar reportes de una forma mas sencilla y cómoda.

## ¿Quieres probar lo que hemos desarrollado hasta ahora?:

* Ruby version: ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-linux]

* Rails version: Rails 5.0.2

* mysql version: mysql  Ver 14.14 Distrib 5.7.17, for Linux (x86_64)

## Como iniciar

1. Clone nuestro proyecto utilizando `git clone`
2. Ejecute `bundle install` para descargar las gemas que no tiene instaladas en su ordenador
3. Ejecute `rake db:create` para crear una nueva base de datos local en mysql
4. En el archivo `config\database.yml` en las lineas 11 y 12 configure su nombre de usuario y contraseña de mysql
5. Ejecute `rake db:migrate` para inicializar la base de datos
6. Ejecute `rails s` para iniciar el servidor

Listo, ahora puedes explorar nuestra aplicación.
