@echo off
cd /d "%~dp0"

echo >> 配置 Git 身份...
git config user.name "Jiuerling"
git config user.email "jiuerling@github.com"

echo >> 添加远程仓库...
git remote remove origin 2>nul
git remote add origin https://github.com/Jiuerling123456/aibot.git

echo >> 暂存文件...
git add .

echo >> 提交...
git commit -m "feat: AI chat bot with Dify Workflow SSE streaming"

echo >> 推送到 GitHub...
git push -u origin main

echo.
echo >> 完成！
pause
