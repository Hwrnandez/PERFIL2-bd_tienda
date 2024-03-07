				DROP DATABASE IF EXISTS hoodiesstore;
		 
				CREATE DATABASE  hoodiesStore;
		 
				USE hoodiesstore;
		 
				CREATE TABLE tb_clientes (
				id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				nombre_cliente VARCHAR (50) NOT NULL,
				apellido_cliente VARCHAR (20) NOT NULL,
				dui_cliente INT NOT NULL,
				telefono_cliente INT NOT NULL,
				direccion_cliente VARCHAR(250) NOT NULL,
				clave_cliente VARCHAR (50) NOT NULL
				);
		 
				CREATE TABLE tb_administradores (
				id_administrador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				nombre_administrador VARCHAR (50) NOT NULL,
				apellido_administrador VARCHAR (50) NOT NULL,
				correo_administrador VARCHAR(59) NOT NULL,
				clave_administrador VARCHAR (100) NOT NULL,
				fecha_registro DATE NOT NULL  
				);
				CREATE TABLE tb_color_productos(
				id_color INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				nombre_color VARCHAR (20) NOT NULL
				);
		 
				CREATE TABLE tb_talla_productos(
				id_talla INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				nombre_talla VARCHAR (5) NOT NULL
				);
		 
				CREATE TABLE tb_categorias(
				id_categoria_hoodie INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				descripcion_categoria VARCHAR (50) NOT NULL,
				nombre_categoria VARCHAR (40) NOT NULL
				);
		 
				CREATE TABLE tb_marcas (
				id_marca INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				nombre_marca VARCHAR (40) NOT NULL,
				imagen_marca VARCHAR (50) NOT NULL
				);
		 
				CREATE TABLE tb_productos(
				id_producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				id_categoria_hoodie INT,
				CONSTRAINT fk_producto_categoria
				FOREIGN KEY (id_categoria_hoodie) REFERENCES tb_categorias (id_categoria_hoodie),
				id_marca INT,
				CONSTRAINT fk_producto_marca
				FOREIGN KEY (id_marca) REFERENCES  tb_marcas (id_marca),
				nombre_producto VARCHAR (50) NOT NULL,
				descripcion_producto VARCHAR (50) NOT NULL,
				precio_producto INT NOT NULL,
				id_administrador INT,
				CONSTRAINT fk_producto_administrador
				FOREIGN KEY(id_administrador) REFERENCES tb_administradores (id_administrador),
				estado_producto ENUM ('en existencia','agotado') NOT NULL,
				imagen_producto VARCHAR (25) NOT NULL,
				existencia_producto VARCHAR (50) NOT NULL
				);
		 
				CREATE TABLE tb_pedidos (
				id_pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				estado_pedido ENUM ('En lista','Preparando pedido','Enviado')NOT NULL,
				fecha_regristo_pedido DATE NOT NULL,
				direccion_pedido VARCHAR (200) NOT NULL,
				id_cliente INT,
				CONSTRAINT fk_pedido_cliente
				FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente)
				);
		 
				CREATE TABLE tb_detalle_productos(
				id_detalle_producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				existencia_producto INT NOT NULL check (existencia_producto >= 0),
				genero_producto VARCHAR (20) NOT NULL,
				id_color INT,
				CONSTRAINT fk_detalle_color
				FOREIGN KEY (id_color) REFERENCES tb_color_productos (id_color),
				id_producto INT,
				CONSTRAINT fk_detalle_producto
				FOREIGN KEY(id_producto) REFERENCES tb_productos (id_producto),
				id_talla INT,
				CONSTRAINT fk_detalle_talla
				FOREIGN KEY(id_talla) REFERENCES tb_talla_productos (id_talla)
				);
		 
				CREATE TABLE tb_detalle_pedidos(
				id_detalle INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				id_pedido INT,
				CONSTRAINT fk_detalle_pedido
				FOREIGN KEY (id_pedido) REFERENCES tb_pedidos (id_pedido),
				id_detalle_producto INT,
				CONSTRAINT fk_detalle_pedido_producto
				FOREIGN KEY (id_detalle_producto) REFERENCES tb_detalle_productos (id_detalle_producto),
				cantidad_producto INT NOT NULL,
				precio_producto NUMERIC (5,2) NOT NULL
				);

