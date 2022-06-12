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
    price FLOAT(5,2) NOT NULL,
    category_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO tb_product (name, description, photo, price, category_id, quantity, created_at)
VALUES
('Teclado', 'Teclado Slim, preto, USB', 'https://www.lojadavs.com.br/teclados-para-automacao/teclados-usb/teclado-slim-preto-usb-multilaser-tc213', 24.50, 1, 5, '2022-06-12 12-00-00'),
('Teclado Wireless', 'Teclado compacto, preto, sem fio', 'https://www.mercadaodainformatica.com.br/teclado-slim-wireless-preto-k230-usb-logitech', 102.70, 1, 10, '2022-06-12 12-00-00'),
('Mouse Wireless', 'Mouse ambidestro, preto, sem fio', 'https://www.lmrs.com.br/mouse-sem-fio-dell-wm126-preto', 58.90, 1, 50, '2022-06-12 12-00-00'),
('Monitor 22"', 'Monitor Gamer, Full HD, 22 polegadas, VGA/HDMI', 'https://www.samsung.com/br/monitors/flat/t35f-22-inch-ips-fhd-1080p-freesync-lf22t350fhlmzd/', 939.90, 1, 15, '2022-06-12 12-00-00'),
('Cabo HDMI', 'Cabo HDMI 2.0, preto, 5 metros', 'https://www.concordia.inf.br/informatica/perifericos-e-acessorios/cabos-e-adaptadores/cabo-hdmi-5mt', 27.41, 1, 20, '2022-06-12 12-00-00'),
('Papel A4', 'Papel Sulfite A4, 75g, 500 folhas', 'https://www.lepok.com.br/produto/Papel-Sulfite-A4-75g-210x297-Com-300-Folhas-Chamex/05361', 25.90, 2, 300, '2022-06-12 12-00-00'),
('Caneta Marca Texto', 'Kit Caneta Marca Texto 4 cores', 'https://www.papelariaartnova.com.br/escritorio/caneta-marca-texto/marca-texto-grifpen-cores-c-4-faber-castell/', 9.90, 2, 200, '2022-06-12 12-00-00'),
('Caderno Zip', 'Caderno Espiral, Capa Dura, 10 matérias, 160 folhas', 'https://www.amazon.com.br/Caderno-Universit%C3%A1rio-Tilibra-305421-Mat%C3%A9rias/dp/B07VFWFS4P', 14.75, 2, 100, '2022-06-12 12-00-00'),
('Caneta Fine Pen', 'Caneta Ponta Fina, preta', 'https://www.papelpicadobh.com.br/caneta-graphs-peps-ponta-fina-preta', 6.80, 2, 500, '2022-06-12 12-00-00'),
('Lápis Preto', 'Kit Lápis Preto 2B, 6 unidades', 'https://www.totalembalagens.com.br/lapis-preto-faber-1205-2b-6-uni', 3.50, 2, 1000, '2022-06-12 12-00-00'),
('Smartwatch', 'Relógio Eletrônico, Preto, 1,43 polegadas, Slim', 'https://www.netshoes.com.br/relogio-smartwatch-z6-bluetooth-camera-celular-chip-cartao-musica-preto-QWT-0121-006', 270.00, 3, 15, '2022-06-12 12-00-00'),
('Caixa de Som Portátil', 'Caixa de Som portátil, Bluetooth, 80W', 'https://www.jbl.com.br/caixas-de-som-bluetooth/JBL+BOOMBOX+2-.html', 999.00, 3, 50, '2022-06-12 12-00-00'),
('Fone Intra Auricular', 'Fone de Ouvido Intra auricular, preto, 110, Com fio', 'http://www.kadri.com.br/produtos/p.asp?id=2054&produto=fone-de-ouvido-intra-auricular-c-microfone-jblt210-preto', 69.00, 3, 150, '2022-06-12 12-00-00'),
('Fone Intra Auricular Wireless', 'Fone de Ouvido Intra auricular, preto, Bluetooth, Sem fio', 'https://www.magazineluiza.com.br/fone-de-ouvido-intra-auricular-jbl-tune-115tws-sem-fio-preto/p/dj0j52cffd/ea/fobt/', 629.10, 3, 75, '2022-06-12 12-00-00'),
('Smart TV LED 32"', 'Smart TV, Preta, 32 polegadas', 'https://www.casasbahia.com.br/tv-smart-32-polegadas/b', 874.99, 3, 30, '2022-06-12 12-00-00');
