# rabbitmq-server-13001

https://github.com/rabbitmq/rabbitmq-server/discussions/13001

# HTTP auth accounts

In file `http-auth-backend/rabbitmq_auth_backend_django/auth/views.py`:

* `admin` / (password ignored) -> `administrator` tag
* `someuser` / (password ignored) -> no tags
* `user01` / (password ignored) -> `management` tag
* `user02` / (password ignored) -> `management` tag
* Otherwise, use Django auth
