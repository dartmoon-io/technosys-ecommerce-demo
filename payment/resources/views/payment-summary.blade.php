<x-layout class="flex items-start justify-center">
    <div class="contaier">
        <h3 class="mb-5 font-black text-white text-center">PAYMENT SYSTEM DEMO</h3>
        <x-card class="mb-3 py-5 px-3 w-[20.625rem] md:w-[22.5rem]">
            <h4 class="mb-3 text-primary text-base text-center">Riepilogo pagamento</h4>
            <x-summary class="mb-5">
                <x-summary.row>
                    <x-summary.content>
                        <x-slot name="title">Importo</x-slot>
                        20,00 €
                    </x-summary.content>
                </x-summary.row>
                <x-summary.row>
                    <x-summary.content>
                        <x-slot name="title">Numero d'ordine</x-slot>
                        ABCDEFGHIJKLMN
                    </x-summary.content>
                </x-summary.row>
                <x-summary.row class="gap-6">
                    <x-summary.content>
                        <x-slot name="title">Carta</x-slot>
                        **** **** **** 0006
                    </x-summary.content>
                    <x-summary.content>
                        <x-slot name="title">CVV</x-slot>
                        ***
                    </x-summary.content>
                </x-summary.row>
            </x-summary>

            <div class="flex gap-2">
                <a href="/" class="w-1/2 py-2 font-bold text-primary text-base text-center uppercase border border-primary rounded-[0.303rem] hover:text-white hover:bg-primary">indietro</a>
                <x-form class="w-1/2">
                    <x-button.primary class="w-full">
                        {{ __('Prosegui') }}
                    </x-button.primary>
                </x-form>
            </div>

            <p class="mt-3 text-light-gray text-xs text-center">Merchant country: Italy</p>
        </x-card>
        <x-form>
            <x-button class="w-full p-3 rounded-[0.303rem] border border-transparent hover:border-white">
                {{ __('Annulla operazione') }}
            </x-button>
        </x-form>
    </div>
</x-layout>
