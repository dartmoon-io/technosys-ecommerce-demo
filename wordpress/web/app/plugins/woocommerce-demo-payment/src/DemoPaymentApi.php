<?php

namespace Dartmoon\WooCommerceDemoPayment;

use GuzzleHttp\Client;

class DemoPaymentApi
{
    protected const PAYMENT_GATEWAY_URL = 'http://demo-payment.test';
    protected const PAYMENT_GATEWAY_CLIENT_ID = '6e2cfb41-4c06-44f5-af1d-38599cc0013d';
    protected const PAYMENT_GATEWAY_CLIENT_SECRET = 'CogSldhzTMWERuAHFVMjFOfrAlvrkV';

    public function preparePayment(float $amount, string $currency, string $description): array
    {
        $url = self::PAYMENT_GATEWAY_URL . '/api/prepare';
        $data = [
            'client_id' => self::PAYMENT_GATEWAY_CLIENT_ID,
            'amount' => $amount,
            'currency' => $currency,
            'description' => $description,
            'notify_url' => 'http://prova.test',
            'cancel_url' => 'http://prova.test',
        ];

        $signature = hash_hmac('sha256', json_encode($data), self::PAYMENT_GATEWAY_CLIENT_SECRET);

        $data['signature'] = $signature;

        $client = new Client();
        $response = $client->post($url, [
            'json' => $data,
        ]);

        $body = json_decode($response->getBody(), true);
        return $body['redirect_url'];
    }
}