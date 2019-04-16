#
# krhee@synamedia
#
#
docker run -d \
--privileged \
--name repo \
-v /Users/kerhee/www:/var/www/ \
-p 8181:80 \
-d cos/httpd:latest 
