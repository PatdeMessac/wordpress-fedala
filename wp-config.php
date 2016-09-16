<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'votre_nom_de_bdd');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'votre_utilisateur_de_bdd');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'votre_mdp_de_bdd');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Q8cWmI>CN^zn,919#BO<Isb$RZxmK1s=u:*tDB~|:4ap;-w15CcVe5R,V$ ,,J)k');
define('SECURE_AUTH_KEY',  'bk|x> 7eo/lVZ+(ZH:A$#c+SzPjZ]<u#!]s_+y/F_j|kglRzbntYE5U+UBm2NK|3');
define('LOGGED_IN_KEY',    '_s?34fL|WHX<H}22c.~O|JdW[x!P|wIRGww&;2!$|Y~$043K||n*sL@C.)W`Rol%');
define('NONCE_KEY',        '+flOd`|{M?o+dt3R-D-k&fP/2+*V=j3oTF6>|C5;&H.)gM4X[XsIH87df{A,<-g:');
define('AUTH_SALT',        ':;YHJKm+(V.<>~Q[-(;seXQ.TBenL3Lj53[~${&$f2<:xuXC%xH(8H8lMj>i0/`;');
define('SECURE_AUTH_SALT', '#`_eR!T=.?j6}|z)Q{ahONc&8U>P,yv1fM2Lur5GB^F_5|880gZ(V=]f,/tJKA9&');
define('LOGGED_IN_SALT',   '{LzND{,(u%`m%TwTRsll<^7lfB|f+2vmB0ZJ]4c#&<%[@;YysZe@.i8%{1h3wR*c');
define('NONCE_SALT',       '2#?ufX5J]1JOth##I4T>[l#XVH=&-_Q*(=+z?32|Z)ml*+[Q6n|pS!U[G@aes9nU');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'fedalawp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d'information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');