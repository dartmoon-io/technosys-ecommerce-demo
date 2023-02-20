Gentile Cliente,
La informiamo che è stato AUTORIZZATO il pagamento:

Data del pagamento: {{ $payment->created_at->format('d/m/Y') }}
Ora del pagamento: {{ $payment->created_at->format('H:i:s') }}
Importo: EUR {{ number_format($payment->amount, 2, ',', '.') }}
Codice ordine pagamento: {{ $payment->description }}

Il pagamento è stato effettuato con la carta di credito:
Numero: **** **** **** {{ $payment->card_number_last_4_digits }}
Scadenza: {{ $payment->card_expiration_month }}/{{ $payment->card_expiration_year }}
CVV: ***
Nome e Cognome: {{ $payment->first_name }} {{ $payment->last_name }}
Indirizzo E-mail: {{ $payment->email }}
