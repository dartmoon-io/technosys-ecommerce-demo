<x-layout class="flex items-start justify-center">
    <div class="contaier">
        <h3 class="mb-5 font-black text-white text-center">PAYMENT SYSTEM DEMO</h3>
        <x-card class="mb-3 py-5 px-3 w-[20.625rem] md:w-[22.5rem]">
            <h4 class="mb-3 text-primary text-base text-center">Riepilogo pagamento</h4>
            <x-summary class="mb-5">
                <x-summary.row>
                    <x-summary.content title="Importo">{{ number_format($payment->amount, 2, ',', '.') }} €</x-summary.content>
                </x-summary.row>
                <x-summary.row>
                    <x-summary.content title="Numero d'ordine">{{ $payment->description }}</x-summary.content>
                </x-summary.row>
                <x-summary.row class="gap-6">
                    <x-summary.content title="Carta">**** **** **** {{ $payment->card_number_last_4_digits }}</x-summary.content>
                    <x-summary.content title="CVV">***</x-summary.content>
                </x-summary.row>
            </x-summary>

            <div class="flex gap-2">
                <x-form class="w-1/2" method="post" :action="route('payment.step2.back', $payment)">
                    <x-button.back class="w-full" type="submit">
                        {{ __('Indietro') }}
                    </x-button.ba>
                </x-form>
                <x-form class="w-1/2" method="post" :action="route('payment.step2.process', $payment)">
                    <x-button.primary class="w-full" type="submit">
                        {{ __('Prosegui') }}
                    </x-button.primary>
                </x-form>
            </div>

            <p class="mt-3 text-light-gray text-xs text-center">Merchant country: Italy</p>
        </x-card>
        <x-form method="post" :action="route('payment.cancel', $payment)">
            <x-button class="w-full border p-2 rounded-[0.303rem] border-transparent hover:border-white" type="submit">
                {{ __('Annulla operazione') }}
            </x-button>
        </x-form>
    </div>
</x-layout>
