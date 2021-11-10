INSERT INTO users (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO users (name, email, password) VALUES ('Ana Blue', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO roles (authority) VALUES ('ROLE_VISITOR');
INSERT INTO roles (authority) VALUES ('ROLE_MEMBER');

INSERT INTO user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO genres (name) VALUES ('Drama');
INSERT INTO genres (name) VALUES ('Ficção Científica');
INSERT INTO genres (name) VALUES ('Esporte');

INSERT INTO movies (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Moonlight', 'Sob a Luz do Luar', 2016, 'https://tristanmeiklefa27blog.files.wordpress.com/2021/02/91pbfpzx5ul._ac_sl1500_.jpg', 'Black trilha uma jornada de autoconhecimento enquanto tenta escapar do caminho fácil da criminalidade e do mundo das drogas de Miami. Encontrando amor em locais surpreendentes, ele sonha com um futuro maravilhoso.', 1);
INSERT INTO movies (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('O Jogo da Imitação', 'O verdadeiro enigma foi o homem que o desvendou', 2014, 'https://i.pinimg.com/originals/96/ff/0e/96ff0e3fc8fe26310c0fda592fb65925.jpg', 'Em 1939, a recém-criada agência de inteligência britânica MI6 recruta Alan Turing, um aluno da Universidade de Cambridge, para entender códigos nazistas, incluindo o "Enigma", que criptógrafos acreditavam ser inquebrável. A equipe de Turing, incluindo Joan Clarke, analisa as mensagens de "Enigma", enquanto ele constrói uma máquina para decifrá-las. Após desvendar as codificações, Turing se torna herói. Porém, em 1952, autoridades revelam sua homossexualidade, e a vida dele vira um pesadelo.', 1);
INSERT INTO movies (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Interestelar', 'O fim da terra não será o nosso fim', 2014, 'https://br.web.img3.acsta.net/pictures/14/10/31/20/39/476171.jpg', 'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.', 2);
INSERT INTO movies (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('A Chegada', 'Porque eles estão aqui?', 2016, 'https://br.web.img2.acsta.net/pictures/16/08/16/17/37/193737.jpg', 'Naves alienígenas chegaram às principais cidades do mundo. Com a intenção de se comunicar com os visitantes, uma linguista e um militar são chamados para decifrar as estranhas mensagens dos visitantes.', 2);
INSERT INTO movies (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Creed: Nascido para Lutar', 'Seu legado é mais que um nome', 2015, 'https://i.pinimg.com/originals/df/32/63/df3263c0e49177ca46adf55fffa4c42f.jpg', 'Adonis Johnson, filho do campeão de boxe Apollo Creed, pede a Rocky Balboa, que está aposentado, para ser seu treinador. Rocky aceita, mas tem dúvidas se Adonis tem o coração de um verdadeiro lutador.', 3);

INSERT INTO reviews (text, user_id, movie_id) VALUES ('Filme incrivél. Emocionante ao deixar claro as atrocidades da sociedade perante as escolhas do ser humano para ser feliz', 1, 1);
INSERT INTO reviews (text, user_id, movie_id) VALUES ('O melhor filme de todos os tempos. Sem dúvidas uma obra prima do cinema e um deslumbre da ciência. Lindo.', 1, 2);

