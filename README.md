#  Fuck the oldest bitch and say the hardest, play mini httpd !
## Tyr it ! 

```
only 13.8kB

REPOSITORY                                                     TAG                 IMAGE ID                      SIZE
httpd                                                          latest              7600dbf20ad8                  13.8kB
```

```
docker run --rm --itd -p 8080:8080 --name httpd qjpoo/httpd
```


```
1. clone asmttpd code
git clone https://github.com/nemasu/asmttpd
2. docker build -t httpd --no-cache  .
3. docker run -itd --rm -p 8080:8080 --name httpd httpd
curl YourIP:8080
```
