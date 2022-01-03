##### With basic auth and body
```shell script
curl -u elastic:changeme \
-XGET "http://localhost:9200/business/_search" \
-H 'Content-Type: application/json' \
-H 'Second-Header: some value' \
'{
  "query": {
    "match_all": {}
  }
}'
```



##### With basic-auth RequestParam param_int and param_string
```shell script
curl -X POST -D- 'http://localhost:8080/some-path?param_int=54605&param_string=some@some.com&' \
	-H 'Content-Type: application/text' \
	-u username:password
```


##### With cookie
```shell script
	curl -X GET -D- 'http://localhost:8083/some_path' \
    	-H 'Content-Type: application/text' \
    	 -v --cookie "cookie_name=cookie_value"
```

##### Download file from server
```shell script
    curl -X GET -D- 'http://localhost:8080/some_path' \
        -H 'Content-Type: application/text' \
        -o vam.csv
```

##### Upload file to server
```shell script
    curl -X POST -D- 'http://localhost:8080/some_path' \
    	-H 'Content-Type: multipart/form-data' \
        -u checker:1d0fZ7wjO7qt                  \
    	-F 'file=@1.3.csv' \
       --max-time 900
```
        
##### [HOME](./../../../README.md)