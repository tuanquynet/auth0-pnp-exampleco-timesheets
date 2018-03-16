if [ ! $ACCESS_TOKEN ] 
then
	ACCESS_TOKEN=$1;
fi

API_URL=https://tuanquynet.au.webtask.io/adf6e2f2b84784b57522e3b19dfc9201/api
AUTH_HEADER=`echo "Authorization: Bearer $ACCESS_TOKEN"`
#echo $AUTH_HEADER;

curl --request GET \
  --url $API_URL/users \
  -H "$AUTH_HEADER"
