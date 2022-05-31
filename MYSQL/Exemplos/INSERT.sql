INSERT INTO cartoes
    (`id`, `numero_cartao`, `vencimento`)
VALUES
    (1, '50208052671179410', '2023-11-30 07:14:32'),
    (2, '3529-0125-1870-6711', '2025-05-13 10:01:16'),
    (3, '4620-0960-1375-4078', '2025-10-13 19:12:12'),
    (4, '5361-6862-3699-0485', '2021-04-11 12:20:29'),
    (5, '3529-9987-9580-9475', '2025-10-20 08:39:07'),
    (6, '3528-0658-1738-3058', '2022-02-05 07:09:48'),
    (7, '6011-6193-6297-5749', '2023-10-04 17:55:18'),
    (8, '3725-104418-99430', '2021-03-02 20:39:48'),
    (9, '5324-6725-5680-9941', '2023-12-07 06:38:05'),
    (10, '4527-5893-8312-4514', '2023-10-18 11:02:17');

INSERT INTO usuarios
    (`id`, `email`, `senha`, `apelido`, `cartao_id`)
VALUES
    (1, 'rosinete.ramos@example.com', 'screwyou', 'smallostrich676', 1),
    (2, 'ivanoel.souza@example.com', 'tomato', 'sadbird413', 2),
    (3, 'romilda.silveira@example.com', 'batman', 'beautifuldog492', 3),
    (4, 'alcindo.nunes@example.com', 'respect', 'brownduck417', 4),
    (5, 'arlete.caldeira@example.com', 'jets', 'angryduck508', 5),
    (6, 'fausto.viana@example.com', 'real', 'angryrabbit652', 6),
    (7, 'adeci.nogueira@example.com', '1313', 'blackladybug794', 7),
    (8, 'dalvania.dacosta@example.com', 'ling', 'ticklishmouse831', 8),
    (9, 'evaristo.sales@example.com', 'celine', 'blackpanda995', 9),
    (10, 'pedrino.fogaca@example.com', 'puppies', 'happywolf768', 10);


INSERT INTO countries 
VALUES (1,"CE","AMERICA")