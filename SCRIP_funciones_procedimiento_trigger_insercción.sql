				-- insertar tabla clientes
				DELIMITER $$
				CREATE PROCEDURE insercion_clientes(IN nombre_client VARCHAR (50),IN apellido_client VARCHAR (20), IN dui_client INT, IN telefono_client INT ,IN direccion_client VARCHAR(250), IN clave_client VARCHAR (50))
				BEGIN 
				INSERT INTO tb_clientes(nombre_cliente, apellido_cliente, dui_cliente, telefono_cliente, direccion_cliente, clave_cliente) VALUES (nombre_client, apellido_client, dui_client, telefono_client, direccion_client, clave_client);
				END
				$$
				
				
				-- insertar tabla admins
				DELIMITER $$
				CREATE PROCEDURE insercion_administradores(IN nombre_admin VARCHAR (50),IN apellido_admin VARCHAR (20), IN correo_admin INT, IN clave_admin INT ,IN fecha_registro_admin DATE)
				BEGIN 
				INSERT INTO tb_administradores(nombre_administrador, apellido_administrador,correo_administrador,clave_administrador,fecha_registro) VALUES (nombre_admin, apellido_admin, correo_admin, clave_admin, fecha_registro_admin);
				END
				$$
				
				
				 -- insertar tabla tb_color_productos
				DELIMITER $$
				CREATE PROCEDURE insercion_color_producto(IN nombre_col VARCHAR (50))
				BEGIN 
				INSERT INTO tb_color_productos(nombre_color) VALUES (nombre_col);
				END
				$$
				
				 -- insertar tabla tb_talla_productos
				DELIMITER $$
				CREATE PROCEDURE insercion_talla_producto(IN nombre_tal VARCHAR (50))
				BEGIN 
				INSERT INTO tb_talla_productos(nombre_talla) VALUES (nombre_tal);
				END
				$$
				

				 -- insertar tabla tb_categorias
				DELIMITER $$
				CREATE PROCEDURE insercion_categoria(IN descripcion_cate VARCHAR (50),IN nombre_cate VARCHAR (50))
				BEGIN 
				INSERT INTO tb_categorias(descripcion_categoria, nombre_categoria) VALUES (descripcion_cate,nombre_cate);
				END
				$$
				CALL insercion_categoria ('Exelente comodidad y estilo','NIKE');

				   -- insertar tabla tb_marcas
				DELIMITER $$
				CREATE PROCEDURE insercion_marcas(IN nombre_marc VARCHAR (50),IN img_marca VARCHAR (50))
				BEGIN 
				INSERT INTO tb_marcas(nombre_marca, imagen_marca) VALUES (nombre_marc,img_marca);
				END
				$$
				CALL insercion_marcas ('NIKE','0X');
				-- actualizar tabla clientes
				DELIMITER $$
				CREATE PROCEDURE actualizar_clientes(IN id INT, IN nombre_client VARCHAR (50),IN apellido_client VARCHAR (20), IN dui_client INT, IN telefono_client INT ,IN direccion_client VARCHAR(250), IN clave_client VARCHAR (50))
				BEGIN 
					UPDATE tb_clientes
					SET nombre_cliente = nombre_client, apellido_cliente = apellido_client, dui_cliente = dui_client, telefono_cliente = telefono_client, direccion_cliente = direccion_client, clave_cliente = clave_client
					WHERE id_cliente = id; 
				END
				$$
				-- eliminar tabla clientes
				DELIMITER $$
				CREATE PROCEDURE eliminar_clientes(IN id INT)
				BEGIN 
					DELETE FROM tb_clientes WHERE id_cliente = id;
				END
				$$
				-- funciom sacar el total 
				DELIMITER $$
				CREATE FUNCTION calcular_total_producto(id INT)
				RETURNS DECIMAL(5,2)
				BEGIN
					DECLARE total DECIMAL(5,2);
					DECLARE precio DECIMAL(5,2);
					DECLARE cantidad INT;
					SELECT precio_producto INTO precio
					FROM tb_detalle_pedidos
					WHERE id_detalle = id;
					SELECT cantidad_producto INTO cantidad
					FROM tb_detalle_pedidos
					WHERE id_detalle = id;
					SET total = precio * cantidad;
					RETURN total;
				END
				$$
				
                -- Creación del trigger para actualizar pedidos
	   DELIMITER $$
	CREATE TRIGGER actualizacion_pedido
	AFTER UPDATE ON tb_pedidos
	FOR EACH ROW
	BEGIN
		IF OLD.estado_pedido != NEW.estado_pedido THEN
			INSERT INTO tabla_log_pedidos (id_pedido, estado_anterior, estado_actual, fecha_actualizacion)
			VALUES (NEW.id_pedido, OLD.estado_pedido, NEW.estado_pedido, NOW());
		END IF;
	END;
	$$
    
                CALL insercion_clientes ('Andrés', 'García', '07127790-5', '7622-3781', 'San Salvador, San Salvador 17av norte #212', 'J8PFJlwM');
				CALL insercion_clientes ('María Fernanda', 'López Ramírez', '04568923-7', '7854-1236', 'Ciudad de México, Calle Principal #123', '8e9WcN5R');
				CALL insercion_clientes ('Juan Carlos', 'Gómez Martínez', '07896542-1', '6248-9874', 'Bogotá, Calle 45 #567', 'Yh4lO7tA');
				CALL insercion_clientes ('Ana Isabel', 'Herrera Díaz', '03214587-9', '7541-3698', 'San José, Avenida Central #789', '6pQ2Mf9o');
				CALL insercion_clientes ('Luis Alberto', 'Rivera Flores', '09562147-3', '6123-7854', 'Guadalajara, Calle Secundaria #456', 'Bn5L8zPd');
				CALL insercion_clientes ('Carolina Andrea', 'Gómez Rodríguez', '08741236-8', '7458-6321', 'Medellín, Carrera Principal #789', '3bV1Km7s');
				CALL insercion_clientes ('José Manuel', 'Martínez Sánchez', '06523987-2', '6987-1235', 'Madrid, Calle Mayor #234', '4jR6Dp2Q');
				CALL insercion_clientes ('Sofía Alejandra', 'Ramírez González', '03214578-1', '7852-3641', 'Barcelona, Avenida Principal #876', '9wY3Nh6G');
				CALL insercion_clientes ('Miguel Ángel', 'García Ruiz', '07895623-5', '6325-7412', 'Sevilla, Calle Secundaria #789', '2kU7Gv4W');
				CALL insercion_clientes ('Paola Alexandra', 'Díaz Hernández', '04587236-8', '7845-3216', 'Buenos Aires, Avenida Principal #321', '5nS9Zr8T');
				CALL insercion_clientes ('Carlos Eduardo', 'López Gómez', '07896523-1', '6321-7854', 'Santiago, Calle Mayor #456', '1uX5Ep3Y');
				CALL insercion_clientes ('Andrea Patricia', 'Ramos Herrera', '03215687-4', '7452-3698', 'Lima, Avenida Principal #987', '7tZ4Fq1O');
				CALL insercion_clientes ('Juan Pablo', 'Martínez Ramírez', '07896532-9', '6985-1236', 'Montevideo, Calle Secundaria #654', '3xV7Rp6Q');
				CALL insercion_clientes ('Mariana Gabriela', 'Gómez Flores', '09234587-6', '7452-9863', 'Quito, Avenida Principal #123', '6sT9Yw2N');
				CALL insercion_clientes ('Pedro Antonio', 'Hernández Martínez', '03218975-2', '6123-7854', 'Caracas, Calle Mayor #789', '8vX3Tk5P');
				CALL insercion_clientes ('Laura Michelle', 'Sánchez Ramírez', '06548723-1', '7854-1236', 'La Paz, Avenida Principal #456', '4rE7Wu9S');
				CALL insercion_clientes ('Diego Andrés', 'Martínez López', '07895632-4', '6325-7412', 'Asunción, Calle Secundaria #789', '1tR4Fg7U');
				CALL insercion_clientes ('María José', 'González Hernández', '08741236-7', '7845-3216', 'Santo Domingo, Calle Principal #321', '5yH8Jk3L');
				CALL insercion_clientes ('Fernando José', 'Ramírez Gómez', '04587236-5', '6987-1235', 'Brasilia, Avenida Central #987', '9pO2Ms5N');
				CALL insercion_clientes ('Fernando José', 'Ramírez Gómez', '04587236-5', '6987-1235', 'Brasilia, Avenida Central #987', '9pO2Ms5N');
				CALL insercion_clientes ('María Isabel', 'Martínez González', '06543210-9', '7890-1234', 'Ciudad de México, CDMX, Calle Reforma #123', 'k9E3h7Pq');
				CALL insercion_clientes ('Juan Carlos', 'Ramírez Sánchez', '07894561-2', '5678-9012', 'Bogotá, Colombia, Carrera 45 #67-89', 'Wp5nT2sU');
				CALL insercion_clientes ('Ana Luisa', 'Rodríguez Lozano', '09321478-1', '3456-7890', 'Madrid, España, Calle Gran Vía #456', 'fB2eV1xZ');
				CALL insercion_clientes ('Carlos Alberto', 'Gómez Mendoza', '05236987-4', '6789-0123', 'Lima, Perú, Avenida Javier Prado #789', 'sK6zW3nY');
				CALL insercion_clientes ('Lucía', 'Fernández López', '03591726-3', '8901-2345', 'Santiago, Chile, Avenida Libertador Bernardo O Higgins #1010', 'aR7uP4bX');
				
				CALL insercion_administradores ('Alenjandro', 'Rodas', 'Rodas@gmail.com', 'J8ssdsfJlwM', '01/01/24');
				CALL insercion_administradores ('Andrés', 'García', 'andres@gmail.com', 'J8PFJlwM', '02/12/24');
				CALL insercion_administradores ('María', 'García', 'MariaGarcia@gmail.com', 'P9gk2sNlEoP', '02/02/24');
				CALL insercion_administradores ('Carlos', 'Martínez', 'CarlosMartinez@gmail.com', 'Rt7DkqLpO4Z', '03/03/24');
				CALL insercion_administradores ('Laura', 'Hernández', 'LauraHernandez@gmail.com', 'Xu5aBpF2nVl', '04/04/24');
				CALL insercion_administradores ('Juan', 'López', 'JuanLopez@gmail.com', 'K3sGjA5hNp9', '05/05/24');
				CALL insercion_administradores ('Ana', 'Pérez', 'AnaPerez@gmail.com', 'HsF6pYtJzLm', '06/06/24');
				CALL insercion_administradores ('Pedro', 'Gómez', 'PedroGomez@gmail.com', 'ZlO8bVcXrNq', '07/07/24');
				CALL insercion_administradores ('Sofía', 'Díaz', 'SofiaDiaz@gmail.com', 'W4yE2vQ8oTl', '08/08/24');
				CALL insercion_administradores ('Diego', 'Torres', 'DiegoTorres@gmail.com', 'L9qU3iO7wYb', '09/09/24');
				CALL insercion_administradores ('Elena', 'Ramírez', 'ElenaRamirez@gmail.com', 'N1mR6oU9xPq', '10/10/24');
				CALL insercion_administradores ('Javier', 'Fernández', 'JavierFernandez@gmail.com', 'B2zP5xV8cGh', '11/11/24');
				CALL insercion_administradores ('Isabel', 'Sánchez', 'IsabelSanchez@gmail.com', 'Y7bT4lE8sNf', '12/12/24');
				CALL insercion_administradores ('Raúl', 'Vargas', 'RaulVargas@gmail.com', 'M9lO6iN8hTs', '13/01/25');
				CALL insercion_administradores ('Carmen', 'Navarro', 'CarmenNavarro@gmail.com', 'P0lE5iV9hAz', '14/02/25');
				CALL insercion_administradores ('Fernando', 'Gutierrez', 'FernandoGutierrez@gmail.com', 'R2qT5wE1yZb', '15/03/25');
				CALL insercion_administradores ('Luisa', 'Mendoza', 'LuisaMendoza@gmail.com', 'K7xT2oP4bEj', '16/04/25');
				CALL insercion_administradores ('Roberto', 'Salazar', 'RobertoSalazar@gmail.com', 'H4wM8iF3sLp', '17/05/25');
				CALL insercion_administradores ('Marta', 'Ortega', 'MartaOrtega@gmail.com', 'X5aP1qG9oWl', '18/06/25');
				CALL insercion_administradores ('Ricardo', 'Dominguez', 'RicardoDominguez@gmail.com', 'N8sF5gP2rTl', '19/07/25');
				CALL insercion_administradores ('Lucía', 'Cabrera', 'LuciaCabrera@gmail.com', 'Z1oP9kR3lYv', '20/08/25');
				CALL insercion_administradores ('Gabriel', 'Silva', 'GabrielSilva@gmail.com', 'H3lI5rU8dOq', '21/09/25');
				CALL insercion_administradores ('Natalia', 'Herrera', 'NataliaHerrera@gmail.com', 'W7bT4lE8sNf', '22/10/25');
				CALL insercion_administradores ('Oscar', 'Cruz', 'OscarCruz@gmail.com', 'L9qU3iO7wYb', '23/11/25');
				CALL insercion_administradores ('Adriana', 'Lara', 'AdrianaLara@gmail.com', 'B2zP5xV8cGh', '24/12/25');
				 
                 CALL insercion_color_producto ('Rojo');
				CALL insercion_color_producto ('azul cielo');
				CALL insercion_color_producto ('Azul');
				CALL insercion_color_producto ('Verde');
				CALL insercion_color_producto ('Amarillo');
				CALL insercion_color_producto ('Negro');
				CALL insercion_color_producto ('Blanco');
				CALL insercion_color_producto ('Morado');
				CALL insercion_color_producto ('Naranja');
				CALL insercion_color_producto ('Gris');
				CALL insercion_color_producto ('Rosa');
				CALL insercion_color_producto ('Cyan');
				CALL insercion_color_producto ('Marrón');
				CALL insercion_color_producto ('Turquesa');
				CALL insercion_color_producto ('Oro');
				CALL insercion_color_producto ('Plata');
				CALL insercion_color_producto ('Violeta');
				CALL insercion_color_producto ('Índigo');
				CALL insercion_color_producto ('Fucsia');
				CALL insercion_color_producto ('Verde limón');
				CALL insercion_color_producto ('Turmalina');
				CALL insercion_color_producto ('Ámbar');
				CALL insercion_color_producto ('Lila');
				CALL insercion_color_producto ('Cereza');
				CALL insercion_color_producto ('Celeste');
                
                CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('L');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('M');
				CALL insercion_talla_producto ('S');
				CALL insercion_talla_producto ('S');
				CALL insercion_talla_producto ('S');
				CALL insercion_talla_producto ('S');
				CALL insercion_talla_producto ('S');
				CALL insercion_talla_producto ('S');
