# Usa la imagen base oficial de MySQL
FROM mysql:latest

# Define las variables de entorno para configurar el servidor MySQL
ENV MYSQL_DATABASE=mydatabase1 \
    MYSQL_USER=root \
    #MYSQL_PASSWORD=1234 \
    MYSQL_ROOT_PASSWORD=123456

# Opcional: expone el puerto de MySQL (3306) si necesitas acceder a la base de datos desde fuera del contenedor
EXPOSE 3306

# Opcional: copia archivos SQL para inicializar la base de datos si lo necesitas
# COPY init.sql /docker-entrypoint-initdb.d/

# Opcional: establece otras configuraciones personalizadas, como el conjunto de caracteres y la zona horaria
# ENV MYSQL_CHARSET=utf8mb4 \
#     MYSQL_COLLATION=utf8mb4_unicode_ci \
#     TZ=UTC

# Opcional: comandos adicionales de configuración, si los necesitas
# RUN ...

# Opcional: establece un comando por defecto para iniciar el servidor MySQL
CMD ["mysqld"]
