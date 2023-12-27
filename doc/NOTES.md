## Nginx

by default nginx listen on port 80 with a blank server name.

```bash
<!-- Link Node app to proxy container -->
<!--                            node_container:nameinnginx     nginxcontainername nginximage  -->
docker run -d -p 8080:80 --link node-app:myapp --name nginx-proxy np/nginx
```
