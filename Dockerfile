# 使用 chinayin/xxl-job-executor-springboot:2.4 作为基础镜像
FROM chinayin/xxl-job-executor-springboot:2.4

# 设置维护者信息（可选）
LABEL maintainer="iamdanielyin@gmail.com"

# 更新软件包并安装 curl 和 jq
RUN apt-get update && \
    apt-get install -y curl jq && \
    # 清理无用的缓存，减小镜像体积
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*