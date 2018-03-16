if [ ! $ACCESS_TOKEN ] 
then
	ACCESS_TOKEN=$1;
fi

HEADER=`echo "authorization: Bearer $ACCESS_TOKEN"`

curl --request GET \
  -H "$HEADER" \
  --url http://localhost:8080/timesheets

