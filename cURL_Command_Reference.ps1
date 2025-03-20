# Get only Response
curl.exe "<URL>"

# Get Response and follow Redirection
curl.exe -L "<URL>"

# Get Response and Headers
curl.exe -i "<URL>"

# Get only Headers
curl.exe --head "<URL>"
curl.exe --I "<URL>"

# Get details of Client Server interaction
# Verbose
curl.exe -v "<URL>"

# Get log details and save them in local file
curl.exe --trace "<path/to/log_trace.txt>" "<URL>"

# Get log details in ascii and save them in local file
curl.exe --trace-ascii "<path/to/log_trace.txt>" "<URL>"

# Send Headers in your Request
curl.exe -H "<Header>"
# Example
curl.exe -H "Accept:Application/json"

# Post Request (HTTP)
curl.exe "<URL>" --data "<Data>"
curl.exe "<URL>" -d "<Data>"
# Example
curl.exe "https://jsonplaceholder.typicode.com/posts" -d "title=foo&body=bar&userId=1"
curl.exe "https://jsonplaceholder.typicode.com/posts" --data "title=foo&body=bar&userId=1"

# Post Request (HTTP) with passing entire JSON
curl.exe -X -POST -H "<Header>" "<URL>" --data '<JSON>'
curl.exe -X -POST -H "<Header>" "<URL>" -d '<JSON>'
# Example
curl.exe -X -POST -H "application/json" "https://jsonplaceholder.typicode.com/posts" --data '{"title":"foo","body":"bar","userId":1}'


