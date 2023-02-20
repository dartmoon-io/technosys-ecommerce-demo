<?php

namespace Dartmoon\WooCommerceDemoPayment;

use WC_Order;
use WC_Payment_Gateway;

class WooCommerceGateway extends WC_Payment_Gateway
{
    public $id;
    public $enabled;
    public $title;
    public $description;

    public $api;

    public function __construct()
    {
        $this->id = 'demo';
        $this->enabled = 'yes';
        $this->title = 'Pagamento con Carte di Credito';
        $this->description = "Paga in modo rapido e sicuro con le tue carte di credito";
        $this->has_fields = false;

        $this->api = new DemoPaymentApi();
    }

	public function process_payment( $order_id ) {
		$order = new WC_Order( $order_id );

        // Mark as on-hold (we're awaiting the payment)
		$order->update_status('pending', __( 'Awaiting WAVES payment', 'woocommerce-waves-gateway'));

        // Let's make a request to the payment gateway
        // to prepare the payment and get the payment url
        $payment = $this->api->preparePayment(
            $order->get_total(),
            $order->get_currency(),
            'Order #' . $order->get_id(),
            home_url() . '/app/plugins/woocommerce-demo-payment/notify.php?order_id=' . $order_id,
            home_url() . '/app/plugins/woocommerce-demo-payment/cancel.php?order_id=' . $order_id,
        );

        // Save the payment token in the order
        update_post_meta($order_id, 'payment_token', $payment['payment']);

		return [
			'result' => 'success',
			'redirect' => $payment['redirect_url'],
		];
	}
}