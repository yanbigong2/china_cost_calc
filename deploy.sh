#!/bin/bash
echo "🚀 开始发布中国城市生活成本计算器到 GitHub Pages..."

cd "$(dirname "$0")"

# 检查是否已初始化 git
if [ ! -d ".git" ]; then
    echo "初始化 Git 仓库..."
    git init
fi

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: 中国城市生活成本与薪资购买力计算器" || echo "没有新文件需要提交"

# 检查是否已设置远程仓库
if ! git remote | grep -q origin; then
    echo "设置远程仓库..."
    git remote add origin https://github.com/yanbigong2/china_cost_cal.git
fi

# 推送
git branch -M main
git push -u origin main || echo "⚠️  如果推送失败，请先在 GitHub 创建仓库：https://github.com/new"
echo ""
echo "✅ 代码已推送到 GitHub！"
echo ""
echo "📝 下一步：启用 GitHub Pages"
echo "   1. 访问：https://github.com/yanbigong2/china_cost_cal"
echo "   2. 点击 Settings → Pages"
echo "   3. Source 选择：main 分支，/ (root) 文件夹"
echo "   4. 点击 Save"
echo "   5. 几分钟后访问：https://yanbigong2.github.io/china_cost_cal/"
