<?php

use Dartmoon\WooCommerceDemoPayment\DemoPaymentApi;

require_once (dirname(dirname(dirname(__DIR__))) . '/wp/wp-load.php');

// Let's check if the payment token is set and the order id is set
if (!isset($_GET['payment']) || empty($_GET['order_id'])) {
    wp_redirect(home_url());
    exit;
}

// Let's get the order from the database
$order = wc_get_order($_GET['order_id']);
if (!$order) {
    wp_redirect(home_url());
    exit;
}

// Let's check if the payment token is the same
$paymentToken = get_post_meta($order->get_id(), 'payment_token', true);
if ($paymentToken !== $_GET['payment']) {
    wp_redirect(home_url());
    exit;
}

// Let's check the payment status
$api = new DemoPaymentApi();
$paymentStatus = $api->getPaymentStatus($_GET['payment']);

if ($paymentStatus['status'] === DemoPaymentApi::PAYMENT_AUTHORIZED) {
    $order->payment_complete($paymentToken);
    $order->update_status('completed');
    wp_redirect($order->get_checkout_order_received_url());
    exit;
} else {
    $order->update_status('failed');
    wp_redirect($order->get_cancel_order_url_raw());
    exit;
}