<?php
/**
 * Plugin Name: WooCommerce Demo Payment Gateway
 * Description: Simple WooCommerce Demo Payment Gateway
 * Author:      Dartmoon 
 * Author URI:  http://dartmoon.io
 * Version:     1.0.0
 */

use Dartmoon\WoocCmmerceDemoPayment\WCDemoGateway;

if (!defined('ABSPATH')) {
    exit;
}

include_once "vendor/autoload.php";

class WCDemoPayment
{

	public static function initialize()
	{
		add_action('plugins_loaded', [self::class, 'init']);
	}

	public static function init()
	{
		if (!class_exists('WC_Payment_Gateway')) {
			return;
		}

		if (class_exists('WC_Demo_Payment_Gateway')) {
			return;
		}

		add_filter('woocommerce_payment_gateways', [self::class, 'add_to_gateways']);
	}

	public static function add_to_gateways($gateways)
	{
		$gateways['demo'] = WCDemoGateway::class;
	    return $gateways;
	}

}