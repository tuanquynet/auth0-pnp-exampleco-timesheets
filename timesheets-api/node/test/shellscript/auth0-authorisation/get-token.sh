CLIENT_SECRET=$1;
BODY="'{\
    \"client_id\":\"aUHZB3BNYxSSI4WUbdX24Muhu2R7rZK4\",\
    \"client_secret\":\"$CLIENT_SECRET\",\
    \"audience\":\"urn:auth0-authz-api\",\
    \"grant_type\":\"client_credentials\"\
  }'"

echo $BODY;
curl --request POST \
  --url https://tuanquynet.au.auth0.com/oauth/token \
  --header 'content-type: application/json' \
  --data $BODY