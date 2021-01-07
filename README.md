<p>Pour ajouter un mot clé</p>
<p><b>INSERT INTO `mot-cle` (`id`, `mot_cle`) VALUES (NULL, 'mot_clé');</b></p>

<p>Pour ajouter un url</p>
<p><b>INSERT INTO `url` (`id`, `url`, `shortcut`, `datetime`, `description`) VALUES (NULL, 'url', 'url_courte', NOW(), 'description');</b></p>

<p>Pou lier un url et un mot-clé</p>
<p><b>INSERT INTO `assoc_url_mot-cle` (`id_assoc`, `id_url`, `id_mot-cle`) VALUES (NULL,'id_url', 'id_mot_clé');</b></p>
