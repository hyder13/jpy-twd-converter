FROM nginx:alpine

# 创建自定义 nginx 配置，使用 PORT 环境变量
RUN echo 'server { \
    listen $PORT; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri $uri/ =404; \
    } \
}' > /etc/nginx/conf.d/default.conf

# 使用 envsubst 替换 PORT 变量
CMD sh -c 'envsubst "\$PORT" < /etc/nginx/conf.d/default.conf > /tmp/nginx.conf && mv /tmp/nginx.conf /etc/nginx/conf.d/default.conf && nginx -g "daemon off;"'
