<?php

namespace Dartmoon\WoocCmmerceDemoPayment;

use WC_Payment_Gateway;

class WCDemoGateway extends WC_Payment_Gateway
{
    public $id;
    public $enabled;
    public $title;
    public $description;

    public function __construct()
    {
        $this->id = 'demo';
        $this->enabled = true;
        $this->title = 'Demo Payment';
        $this->description = "Payment System Demo";
        $this->has_fields = false;
    }
}