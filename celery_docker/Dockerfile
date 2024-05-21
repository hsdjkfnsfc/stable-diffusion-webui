# 使用官方 Python 3.10 镜像作为基础镜像
FROM hxjs-registry.cn-beijing.cr.aliyuncs.com/ai-group/huimeng_ai:latest
RUN mkdir -p /data/logs

##########################base###############################

# 在容器中创建并设置工作目录
WORKDIR /

RUN /root/miniconda3/envs/test/bin/python -m pip install supervisor
# 安装基本环境
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        supervisor \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 打开端口
EXPOSE 7861

# 运行 Supervisor
CMD ["/root/miniconda3/envs/test/bin/supervisord", "-n", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

