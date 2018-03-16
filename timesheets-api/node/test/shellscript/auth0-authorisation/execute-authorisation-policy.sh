if [ ! $ACCESS_TOKEN ] 
then
	ACCESS_TOKEN=$1;
fi

API_URL=https://tuanquynet.au.webtask.io/adf6e2f2b84784b57522e3b19dfc9201/api
AUTH_HEADER=`echo "Authorization: Bearer $ACCESS_TOKEN"`

echo "Execute Authorization Policy on client test-gp2-sobadmin"
CLIENT_ID=D2NN05QzTl6EL8fHVfIaZm2Fs9sh5T58 #test-gp2-sobadmin

USER_EMAIL=test01@yourdemo.click
USER_ID='auth0|5aa7fb2310f8d92aca3f5365'
echo $AUTH_HEADER;

curl --request POST \
  --url "$API_URL/users/$USER_ID/policy/$CLIENT_ID" \
  --header "$AUTH_HEADER" \
  --header 'content-type: application/json' \
  --data '{ "connectionName": "Username-Password-Database", "groups": [] }'