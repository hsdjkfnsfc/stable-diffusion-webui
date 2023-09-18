# FROM sd_webui:test2
FROM hxjs-registry.cn-beijing.cr.aliyuncs.com/ai-group/huimeng_ai:env
WORKDIR /stable-diffusion-webui

EXPOSE 7861

ENTRYPOINT ["/root/miniconda3/envs/test/bin/python"]
CMD ["launch.py", "--api", "--xformers"]
