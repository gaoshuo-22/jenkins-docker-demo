# 基于官方轻量Nginx镜像（alpine版本体积小，适合生产）
# FROM nginx:alpine
FROM registry.cn-hangzhou.aliyuncs.com/dockerhub/nginx:alpine

# 将GitHub仓库中的静态页面复制到Nginx的默认发布目录
# Nginx默认会读取/usr/share/nginx/html下的index.html作为首页
COPY ./html /usr/share/nginx/html

# 暴露80端口（Nginx默认监听80端口）
EXPOSE 80

# 启动Nginx（前台运行，确保容器不退出）
CMD ["nginx", "-g", "daemon off;"]


