<?php
define( 'DB_NAME', 'solvimm_db_dev' );
define( 'DB_USER', 'wordpressuser' );
define( 'DB_PASSWORD', 'wordpresspass' );
define( 'DB_HOST', 'solvimm-id-rds-dev.cnwjuneg0hfr.us-east-1.rds.amazonaws.com' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define('AUTH_KEY',         'z-Ne+~%%{8~Q.voW[pL|^m3-y|o0%8h-!/S$yJZ0}M3vkn,+j6u8=BsqH}:z1%(f');
define('SECURE_AUTH_KEY',  '`nz[?[gs|>Z*Ki-K(MA2:Hkq%dzks.jb/_nuGobBr0?22!S2Q+7)h~2If9Rx6-)h');
define('LOGGED_IN_KEY',    'T$$T>L]xI$gAZ)usx|8umM+MMt-thvH3W(!F&W@iIGaT#+o/_`DQ>%DvRC3|Dg#V');
define('NONCE_KEY',        'E-WgByhv22-8]$hY-B!l,xV_*;]drmeR>{c;#OU|qRd]ia-Kw7-<^svy7z{@oPv3');
define('AUTH_SALT',        '|~?WGG|K$)%LT@s7.<j:I_70EE52c7j*7N?3HW$nF}99;4*ceuPRTIU~o_&l97/z');
define('SECURE_AUTH_SALT', '+6L S!j}mCZF$,-R$(Zyg~<|Z1H8}+D,|95_|<ez-{=8ChS/A}I}94R,xpGF]oRS');
define('LOGGED_IN_SALT',   'eIrXU-0d5lpBnA>U(zb@`7>+S&k[s]++t&}pg,U}Vy_g%=!<a )X&uqOe;,=gdka');
define('NONCE_SALT',       '-%uD=J3HBXhLS*f9=<C(.c6l`M_7h|<q)fO^0}p%7&#kI}=+/!ls:G$.EXWVMM?I');
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';