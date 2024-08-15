#!/bin/bash

# 1. 从GitHub拉取最新代码
git pull

# 2. 编译当前目录下的所有JSON文件
for file in *.json; do
    sing-box ruls-set compile + "$file"
done

# 3. 添加新生成的文件到Git
git add .

# 4. 提交改动，提交信息包含时间戳
commit_message="Compiled JSON files on $(date)"
git commit -m "$commit_message"

# 5. 推送提交到GitHub
git push

