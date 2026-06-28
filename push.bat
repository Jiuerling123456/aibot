@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo [1/5] 配置 Git 身份...
git config user.name "Jiuerling"
git config user.email "jiuerling@github.com"

echo [2/5] 添加远程仓库...
git remote remove origin 2>nul
git remote add origin https://github.com/Jiuerling123456/aibot.git

echo [3/5] 暂存文件...
git add -A

echo [4/5] 提交...
git commit -m "feat: AI chat bot with Dify Workflow SSE streaming"

echo [5/5] 推送到 GitHub...
git push -u origin main

echo.
echo ======================
echo    推送成功！完成！
echo ======================
pause
