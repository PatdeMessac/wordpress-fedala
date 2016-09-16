<?php

if ( !defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}
/**
 * Manages product includes folder
 *
 * Here all plugin includes folder is defined and managed.
 *
 * @version		1.0.0
 * @package		ecommerce-product-catalog/includes
 * @author 		Norbert Dreszer
 */
require_once(AL_BASE_PATH . '/modules/price/price-conditionals.php');
require_once(AL_BASE_PATH . '/modules/price/price-filters.php');
require_once(AL_BASE_PATH . '/modules/price/price-functions.php');
require_once(AL_BASE_PATH . '/modules/price/price-meta.php');
require_once(AL_BASE_PATH . '/modules/price/price-settings.php');
require_once(AL_BASE_PATH . '/modules/price/price-shortcodes.php');
require_once(AL_BASE_PATH . '/modules/price/config/currencies.php');


