# Please pass in CLIENT_SECRET
CLIENT_SECRET=$1;
BODY="'{\
    \"client_id\":\"aUHZB3BNYxSSI4WUbdX24Muhu2R7rZK4\",\
    \"client_secret\":\"$CLIENT_SECRET\",\
    \"audience\":\"https://localhost:8080/\",\
    \"grant_type\":\"client_credentials\"\
  }'"

curl --request POST \
  --url https://tuanquynet.au.auth0.com/oauth/token \
  --header 'content-type: application/json' \
  --data $BODY