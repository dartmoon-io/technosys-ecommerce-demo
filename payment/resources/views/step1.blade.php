<x-layout class="flex items-center justify-center">
    <div class="container flex flex-wrap gap-10 md:gap-0">
        <div class="flex flex-col items-center justify-center w-full md:w-1/2">
            <h3 class="mb-5 font-black text-white text-center">PAYMENT SYSTEM DEMO</h3>
            <x-card class="mb-3 py-5 px-3 w-[20.625rem] md:w-[22.5rem]">
                <h2 class="mb-2 font-bold text-black text-center text-4xl tracking-wide">{{ number_format($payment->amount, 2, ',', '.')}} €</h2>
                <span class="block text-black text-center">Ordine</span>
                <p class="mb-3 font-bold text-black text-center">{{ $payment->description }}</p>
                <span class="block w-full h-[0.063rem] mb-3 bg-light-gray"></span>

                <h4 class="mb-3 text-primary text-base text-center tracking-[0.05rem]">Inserisci i dati e procedi al pagamento</h4>
                <x-form method="post" :action="route('payment.step1.process', $payment)">
                    <x-form.row class="mb-3">
                        <x-input-group class="w-full" :has-error="$errors->has('card_number')">
                            <x-slot name="label" for="card_number">{{ __('Numero di carta') }} *</x-slot>
                            <x-input type="text" name="card_number" placeholder="0000000000000000" maxlength="16" :value="old('card_number', $payment->card_number)" required />
                            @if ($errors->has('card_number'))
                                <x-slot name="error">
                                    <x-input-group.error>{{ $errors->first('card_number') }}</x-input-group.error>
                                </x-slot>
                            @endif
                        </x-input-group>
                    </x-form.row>
                    <x-form.row class="mb-3 !flex-row" :has-error="$errors->has('card_expiration')">
                        <x-input-group class="w-1/2">
                            <x-slot name="label" for="card_expiration">{{ __('Scadenza carta') }} *</x-slot>
                            <x-input type="text" name="card_expiration" placeholder="(MM/AA)" maxlength="5" :value="old('card_expiration', $payment->card_expiration)" required />
                            @if ($errors->has('card_expiration'))
                                <x-slot name="error">
                                    <x-input-group.error>{{ $errors->first('card_expiration') }}</x-input-group.error>
                                </x-slot>
                            @endif
                        </x-input-group>
                        <x-input-group class="w-1/2" :has-error="$errors->has('card_cvv')">
                            <x-slot name="label" for="card_cvv">{{ __('CVV') }} *</x-slot>
                            <x-input type="text" name="card_cvv" placeholder="000" maxlength="3" :value="old('card_cvv', $payment->card_cvv)" required />
                            @if ($errors->has('card_cvv'))
                                <x-slot name="error">
                                    <x-input-group.error>{{ $errors->first('card_cvv') }}</x-input-group.error>
                                </x-slot>
                            @endif
                        </x-input-group>
                    </x-form.row>
                    <x-form.row>
                        <x-input-group class="w-full md:w-1/2" :has-error="$errors->has('first_name')">
                            <x-slot name="label" for="name">{{ __('Nome') }}</x-slot>
                            <x-input type="text" name="first_name" :value="old('first_name', $payment->first_name)" required />
                            @if ($errors->has('first_name'))
                                <x-slot name="error">
                                    <x-input-group.error>{{ $errors->first('first_name') }}</x-input-group.error>
                                </x-slot>
                            @endif
                        </x-input-group>
                        <x-input-group class="w-full md:w-1/2" :has-error="$errors->has('last_name')">
                            <x-slot name="label" for="surename">{{ __('Cognome') }}</x-slot>
                            <x-input type="text" name="last_name" :value="old('last_name', $payment->last_name)" required />
                            @if ($errors->has('last_name'))
                                <x-slot name="error">
                                    <x-input-group.error>{{ $errors->first('last_name') }}</x-input-group.error>
                                </x-slot>
                            @endif
                        </x-input-group>
                    </x-form.row>
                    <span class="block mt-1 mb-3 text-xs">Come indicati sulla carta</span>
                    <x-form.row class="mb-6">
                        <x-input-group class="w-full" :has-error="$errors->has('email')">
                            <x-slot name="label" for="email">{{ __('E-mail') }} *</x-slot>
                            <x-input type="email" name="email" :value="old('email', $payment->email)" required />
                            @if ($errors->has('email'))
                                <x-slot name="error">
                                    <x-input-group.error>{{ $errors->first('email') }}</x-input-group.error>
                                </x-slot>
                            @endif
                        </x-input-group>
                    </x-form.row>
                    <x-form.row>
                        <x-button.primary class="w-full">
                            {{ __('Prosegui') }}
                        </x-button.primary>
                    </x-form.row>
                </x-form>
                <p class="mt-3 text-light-gray text-xs text-center">Merchant country: Italy</p>
            </x-card>
            <x-form method="post" :action="route('payment.cancel', $payment)">
                <x-button class="w-full border p-2 rounded-[0.303rem] border-transparent hover:border-white" type="submit">
                    {{ __('Annulla operazione') }}
                </x-button>
            </x-form>
        </div>
        <div class="flex flex-col items-center justify-center space-y-4 w-full md:w-1/2">
            <div>
                <h3 class="font-black text-white text-base text-center uppercase">{{ __('Carte accettate') }}</h3>
                <span class="block w-2/3 mx-auto text-white text-base text-center">N.B. Queste sono carte di test senza valenza reale.</span>
            </div>

            <x-card class="w-[20.625rem] py-4 px-6">
                <h4 class="font-bold text-black text-base uppercase">PAGAMENTO accettatto</h4>
                <h4 class="mb-6 font-bold text-success text-base uppercase">message ok</h4>
                <p class="text-black text-base">4539970000000006</p>
                <div class="flex justify-between">
                    <p class="text-black text-base">12/30</p>
                    <p class="text-black text-base">CVV: 123</p>
                </div>
            </x-card>

            <x-card class="w-[20.625rem] py-4 px-6">
                <h4 class="font-bold text-black text-base uppercase">PAGAMENTO rifiutato</h4>
                <h4 class="mb-6 font-bold text-error text-base uppercase">AUTHORIZATION DENIED</h4>
                <p class="text-black text-base">4539970000000007</p>
                <div class="flex justify-between">
                    <p class="text-black text-base">12/30</p>
                    <p class="text-black text-base">CVV: 123</p>
                </div>
            </x-card>

            <x-card class="w-[20.625rem] py-4 px-6">
                <h4 class="font-bold text-error text-base uppercase">Attenzione</h4>
                <p class="text-black text-base">
                    Questo è un sistema di demo, le transazioni sono solo simulate e non c’è alcun movimento reale di denaro.
                </p>
            </x-card>
        </div>
    </div>
</x-layout>
