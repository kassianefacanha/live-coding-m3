CREATE TABLE `usuarios` (
  `id` int PRIMARY KEY,
  `email` varchar(255),
  `senha` varchar(255),
  `apelido` varchar(255),
  `cartao_id` int
);

CREATE TABLE `cartoes` (
  `id` int PRIMARY KEY,
  `numero_cartao` varchar(255),
  `vencimento` varchar(255)
);

ALTER TABLE `usuarios` ADD FOREIGN KEY (`cartao_id`) REFERENCES `cartoes` (`id`);
