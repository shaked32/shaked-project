#!/bin/bash


API_TOKEN="RcpCtDiKyUimf2fyyER3NmrkhwCTSWSD2RNQ2kIw"        
ZONE_ID="95a70556ceb2585337e9703302e87936"            
CERTIFICATE_ID="your_certificate_id"  


curl -X GET "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/ssl/certificates/$CERTIFICATE_ID" \
	-H "Authorization: Bearer $API_TOKEN" \
	-H "Content-Type: application/json" \
	-o /etc/ssl/certs/status-page.crt

curl -X GET "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/ssl/certificates/$CERTIFICATE_ID/key" \
	-H "Authorization: Bearer $API_TOKEN" \
	-H "Content-Type: application/json" \
	-o /etc/ssl/private/status-page.key

