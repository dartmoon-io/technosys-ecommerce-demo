Gentile Cliente,<br>
La informiamo che è stato AUTORIZZATO il pagamento:<br>
<br>
Data del pagamento: {{ $payment->created_at->format('d/m/Y') }}<br>
Ora del pagamento: {{ $payment->created_at->format('H:i:s') }}<br>
Importo: EUR {{ number_format($payment->amount, 2, ',', '.') }}<br>
Codice ordine pagamento: {{ $payment->description }}<br>
<br>
Il pagamento è stato effettuato con la carta di credito:<br>
Numero: **** **** **** {{ $payment->card_number_last_4_digits }}<br>
Scadenza: {{ $payment->card_expiration_month }}/{{ $payment->card_expiration_year }}<br>
CVV: ***<br>
Nome e Cognome: {{ $payment->first_name }} {{ $payment->last_name }}<br>
Indirizzo E-mail: {{ $payment->email }}<br>
