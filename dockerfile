FROM hxjs-registry.cn-beijing.cr.aliyuncs.com/ai-group/celery_huimeng_ai:latest
# WORKDIR /stable-diffusion-webui
# COPY webui.log /webui.log

# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1
# ENV LD_PRELOAD=libtcmalloc.so

# # 安装依赖
# RUN apt-get update \
#     && apt-get install -y --no-install-recommends \
#         curl \
#         gnupg2 \
#         build-essential \
#         libpq-dev \
#         supervisor \
#         libgoogle-perftools-dev \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/* 


ENV TZ=Asia/Shanghai
RUN apt-get update && apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

# COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# EXPOSE 7861

# CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/conf.d/supervisord.conf"]