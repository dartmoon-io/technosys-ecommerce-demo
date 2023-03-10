$TTL    604800
@       IN      SOA     ns1.googleapis.com. root.googleapis.com. (
                  3     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.googleapis.com.

; name servers - A records
ns1.googleapis.com.        IN      A      172.16.178.130

googleapis.com.            IN      A      172.16.178.130

fonts.googleapis.com.            IN      A      172.16.178.130
