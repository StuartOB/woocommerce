<?php
/**
 * Plugin Name: WooCommerce
 * Plugin URI: https://woocommerce.com/
<<<<<<< HEAD
 * Description: An e-commerce toolkit that helps you sell anything. Beautifully.
 * Version: 3.2.5
 * Author: Automattic
 * Author URI: https://woocommerce.com
 * Requires at least: 4.4
 * Tested up to: 4.9
 *
=======
 * Description: An eCommerce toolkit that helps you sell anything. Beautifully.
 * Version: 3.6.0-dev
 * Author: Automattic
 * Author URI: https://woocommerce.com
>>>>>>> 4ad0fbd5217e8fc7ecb454fbed049b6092b28464
 * Text Domain: woocommerce
 * Domain Path: /i18n/languages/
 *
 * @package WooCommerce
 */

defined( 'ABSPATH' ) || exit;

// Define WC_PLUGIN_FILE.
if ( ! defined( 'WC_PLUGIN_FILE' ) ) {
	define( 'WC_PLUGIN_FILE', __FILE__ );
}

// Include the main WooCommerce class.
if ( ! class_exists( 'WooCommerce' ) ) {
	include_once dirname( __FILE__ ) . '/includes/class-woocommerce.php';
}

/**
 * Returns the main instance of WC.
 *
 * @since  2.1
 * @return WooCommerce
 */
function WC() { // phpcs:ignore WordPress.NamingConventions.ValidFunctionName.FunctionNameInvalid
	return WooCommerce::instance();
}

// Global for backwards compatibility.
$GLOBALS['woocommerce'] = WC();
