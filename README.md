# Generic HTTPS Redirect

This image will redirect all traffic on port 80 to https://HOST/PATH.

Use it with a load balancer as the fallthrough to redirect all your http traffic.

## Example

```
version: '2'
services:
  http:
    image: jamesandariese/redirect-to-https
    ports:
    - 80:80/tcp
```
