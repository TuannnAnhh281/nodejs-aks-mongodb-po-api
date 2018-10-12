i=1
while [ $i -le 50 ]; do
	curl -i -X POST -H "Content-Type:application/json" -d "{ \"item\" : \"48-inch O-Ring Chain\", \"price\" : 18.50, \"quantity\" : $i, \"description\" : \"O-Ring Chain\", \"cname\" : \"Acme Corporation\", \"dcode\" : \"8%\", \"origin\" : \"SAP\"}" curl -v -k -X GET https://po-service.033185fc7e8b483fae46.westus.aksapp.io/orders/create
	i=$[$i + 1]
done
echo "Added 50 Purchase orders...."
