import mysql.connector

# Configuración de la conexión
config = {
    'user': 'tu_usuario',
    'password': 'tu_contraseña',
    'host': 'localhost',
    'database': 'nombre_de_tu_base_de_datos'
}

# Conectar a la base de datos
try:
    connection = mysql.connector.connect(**config)
    if connection.is_connected():
        print("Conexión exitosa a la base de datos")
except mysql.connector.Error as err:
    print(f"Error: {err}")
finally:
    if connection.is_connected():
        connection.close()
        print("Conexión cerrada")