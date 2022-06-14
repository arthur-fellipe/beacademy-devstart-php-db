CREATE DATABASE db_store;

USE db_store;

CREATE TABLE tb_category (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) UNIQUE NOT NULL,
    description VARCHAR(100) NOT NULL
);

INSERT INTO tb_category (name, description)
VALUES
('Informática', 'Produtos de informática e acessórios para computador'),
('Escritório', 'Canetas, cadernos, papelaria, etc'),
('Eletrônicos', 'TVs, som portátil, caixas de som, etc');

CREATE TABLE tb_product (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    price FLOAT(10,2) NOT NULL,
    category_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO tb_product (name, description, photo, price, category_id, quantity, created_at)
VALUES
('Teclado', 'Teclado Slim, preto, USB', 'https://m.media-amazon.com/images/I/61awqwlmk3L._AC_SL1200_.jpg', 24.50, 1, 5, NOW()),
('Teclado Wireless', 'Teclado compacto, preto, sem fio', 'https://http2.mlstatic.com/D_NQ_NP_778181-MLB44866050117_022021-O.webp', 102.70, 1, 10, NOW()),
('Mouse Wireless', 'Mouse ambidestro, preto, sem fio', 'https://m.media-amazon.com/images/I/61qpQ7ZsSmL._AC_SL1500_.jpg', 58.90, 1, 50, NOW()),
('Monitor 22"', 'Monitor Gamer, Full HD, 22 polegadas, VGA/HDMI', 'https://www.lg.com/br/images/monitores/MD05912078/gallery/medium01.jpg', 939.90, 1, 15, NOW()),
('Cabo HDMI', 'Cabo HDMI 2.0, preto, 5 metros', 'https://images.tcdn.com.br/img/img_prod/740836/cabo_hdmi_5mt_7799_1_3fe9805fcb0f09b42a351723963da64c.jpg', 27.41, 1, 20, NOW()),
('Papel A4', 'Papel Sulfite A4, 75g, 500 folhas', 'https://s3.amazonaws.com/lepok.w/produtos/produtos/prod/05361.jpg', 25.90, 2, 300, NOW()),
('Caneta Marca Texto', 'Kit Caneta Marca Texto 4 cores', 'https://www.papelariaartnova.com.br/img/products/marca-texto-grifpen-cores-c-4-faber-castell_1_2000.jpg', 9.90, 2, 200, NOW()),
('Caderno Zip', 'Caderno Espiral, Capa Dura, 10 matérias, 160 folhas', 'https://m.media-amazon.com/images/I/51LBWQZuuyL._AC_SL1200_.jpg', 14.75, 2, 100, NOW()),
('Caneta Fine Pen', 'Caneta Ponta Fina, preta', 'https://img.kalunga.com.br/fotosdeprodutos/427293z.jpg', 6.80, 2, 500, NOW()),
('Lápis Preto', 'Kit Lápis Preto 2B, 6 unidades', 'https://m.media-amazon.com/images/I/51Bk0OGx+tL._AC_SX425_.jpg', 3.50, 2, 1000, NOW()),
('Smartwatch', 'Relógio Eletrônico, Preto, 1,43 polegadas, Slim', 'https://m.media-amazon.com/images/I/41PkCoy5SrL._AC_SX425_.jpg', 270.00, 3, 15, NOW()),
('Caixa de Som Portátil', 'Caixa de Som portátil, Bluetooth, 80W', 'https://imgs.casasbahia.com.br/55014430/1xg.jpg', 1999.00, 3, 50, NOW()),
('Fone Intra Auricular', 'Fone de Ouvido Intra auricular, preto, 110, Com fio', 'https://www.kadri.com.br/sys/corteimg.asp?img=amp-06(30).jpg&sys=produtos&cut=1&w1=302&h1=302', 69.00, 3, 150, NOW()),
('Fone Intra Auricular Wireless', 'Fone de Ouvido Intra auricular, preto, Bluetooth, Sem fio', 'https://m.media-amazon.com/images/I/611zhjm8hUL._AC_SY450_.jpg', 629.10, 3, 75, NOW()),
('Smart TV LED 32"', 'Smart TV, Preta, 32 polegadas', 'https://imgs.casasbahia.com.br/55034002/1xg.jpg', 1274.99, 3, 30, NOW());
