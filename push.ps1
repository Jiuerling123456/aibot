# Git 推送脚本
cd $PSScriptRoot

Write-Host ">> 配置 Git 身份..."
git config user.name "Jiuerling"
git config user.email "jiuerling@github.com"

Write-Host ">> 添加远程仓库..."
git remote remove origin 2>$null
git remote add origin https://github.com/Jiuerling123456/aibot.git

Write-Host ">> 暂存文件..."
git add .

Write-Host ">> 提交..."
git commit -m "feat: AI chat bot with Dify Workflow SSE streaming"

Write-Host ">> 推送到 GitHub..."
git push -u origin main

Write-Host ">> 完成！"
pause
