<?php

namespace Dartmoon\WooCommerceDemoPayment;

use Exception;
use GuzzleHttp\Client;

class DemoPaymentApi
{
    public const PAYMENT_AUTHORIZED = 'authorized';
    
    protected const PAYMENT_GATEWAY_URL = 'http://payment';
    protected const PAYMENT_GATEWAY_CLIENT_ID = '6e2cfb41-4c06-44f5-af1d-38599cc0013d';
    protected const PAYMENT_GATEWAY_CLIENT_SECRET = 'CogSldhzTMWERuAHFVMjFOfrAlvrkV';

    public function preparePayment(float $amount, string $currency, string $description, string $notify_url, string $cancel_url): array
    {
        $url = self::PAYMENT_GATEWAY_URL . '/api/prepare';
        $data = [
            'client_id' => self::PAYMENT_GATEWAY_CLIENT_ID,
            'amount' => $amount,
            'currency' => $currency,
            'description' => $description,
            'notify_url' => $notify_url,
            'cancel_url' => $cancel_url,
        ];

        $signature = hash_hmac('sha256', json_encode($data), self::PAYMENT_GATEWAY_CLIENT_SECRET);

        $data['signature'] = $signature;

        $client = new Client();
        $response = $client->post($url, [
            'json' => $data,
        ]);

        $body = json_decode($response->getBody(), true);
        return $body;
    }

    public function getPaymentStatus($payment): array
    {
        $url = self::PAYMENT_GATEWAY_URL . '/api/status/' . $payment;
        $client = new Client();
        $response = $client->get($url);

        $body = json_decode($response->getBody(), true);

        $data = ['status' => $body['status']];
        $signature = hash_hmac('sha256', json_encode($data), self::PAYMENT_GATEWAY_CLIENT_SECRET);

        if ($signature !== $body['signature']) {
            throw new Exception('Invalid signature');
        }

        return $body;
    }
}