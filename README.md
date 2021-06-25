## tyr it
```
docker run --rm --itd -p 8080: 8080 --name httpd qjpoo/httpd
```


```
1. clone asmttpd code
git clone https://github.com/nemasu/asmttpd
2. docker build -t httpd --no-cache  .
3. docker run -itd --rm -p 8080:8080 --name httpd httpd
curl YourIP:8080
```
