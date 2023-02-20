<?php

require_once (dirname(dirname(dirname(__DIR__))) . '/wp/wp-load.php');

// Let's check if the payment token is set and the order id is set
if (!empty($_GET['order_id'])) {
    wp_redirect(home_url());
    exit;
}

// Let's get the order from the database
$order = wc_get_order($_GET['order_id']);
if (!$order) {
    wp_redirect(home_url());
    exit;
}

// Let's cancel the order and redirect to the cancel url
$order->update_status('cancelled');
wp_redirect($order->get_cancel_order_url_raw());