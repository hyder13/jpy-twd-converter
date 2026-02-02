FROM nginx:alpine
COPY . /usr/share/nginx/html

# 使用 shell 脚本来替换 PORT 变量
CMD sh -c 'sed -i "s/\${PORT}/$PORT/g" /etc/nginx/conf.d/default.conf && nginx -g "daemon off;"'
